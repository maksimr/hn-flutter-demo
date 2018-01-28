import 'package:hn/resources/hackernews.dart';

topstories([int top]) async {
  List<int> data = await hackernews("topstories.json");

  if (top == null || data.length < top) return data;
  return data.getRange(0, top).toList();
}
