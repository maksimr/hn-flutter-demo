import 'dart:io';
import 'dart:convert';

Map _cache = {};

topstory(id) async {
  if (_cache[id] == null) {
    var client = new HttpClient();
    var res = await (await client.getUrl(
            Uri.parse("https://hacker-news.firebaseio.com/v0/item/$id.json")))
        .close();
    _cache[id] = JSON.decode(await res.transform(UTF8.decoder).join());
  }

  return _cache[id];
}
