import 'dart:io';
import 'dart:convert';

hackernews(String path) async {
  var client = new HttpClient();
  var res = await (await client
          .getUrl(Uri.parse("https://hacker-news.firebaseio.com/v0/$path")))
      .close();
  return JSON.decode(await res.transform(UTF8.decoder).join());
}
