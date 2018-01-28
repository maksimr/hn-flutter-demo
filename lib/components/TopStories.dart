import 'package:flutter/material.dart';
import 'package:hn/components/TopStory.dart';
import 'package:hn/resources/topstories.dart';

class TopStories extends StatefulWidget {
  TopStories({Key key}) : super(key: key);

  @override
  TopStoriesState createState() => new TopStoriesState();
}

class TopStoriesState extends State<TopStories> {
  List<int> stories = [];

  @override
  initState() {
    super.initState();
    loadTopStories();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(body: buildList());
  }

  loadTopStories() async {
    List<int> data = await topstories();
    if (mounted) setState(() => stories = data);
  }

  buildList() {
    if (stories.length == 0) return null;

    return new ListView.builder(
      itemExtent: 50.0,
      itemCount: stories.length,
      itemBuilder: (BuildContext context, int index) {
        return new TopStory(stories[index]);
      },
    );
  }
}
