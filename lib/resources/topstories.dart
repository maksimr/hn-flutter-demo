import 'package:hn/resources/hackernews.dart';

Map _cache = {};

topstories([int top = 500]) async {
  if (_cache[top] == null) {
    _cache[top] = (await hackernews("topstories.json"));
  }

  var data = _cache[top];
  if (data.length <= top) return data;
  return data.getRange(0, top).toList();
}
