import 'package:hn/resources/hackernews.dart';

Map _cache = {};

topstory(id) async {
  if (_cache[id] == null) {
    _cache[id] = await hackernews("item/$id.json");
  }

  return _cache[id];
}
