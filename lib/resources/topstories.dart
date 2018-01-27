import 'dart:io';
import 'dart:convert';

topstories([int top = 10]) async {
  var client = new HttpClient();
  var res = await (await client.getUrl(
          Uri.parse("https://hacker-news.firebaseio.com/v0/topstories.json")))
      .close();

  List<int> data = JSON.decode(await res.transform(UTF8.decoder).join());

  if (data.length < top) return data;
  return data.getRange(0, top).toList();
}
