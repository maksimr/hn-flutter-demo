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
    return new Scaffold(
      body: new ListView(children: buildTopStories()),
    );
  }

  loadTopStories() async {
    List<int> data = await topstories(15);
    setState(() => stories = data);
  }

  buildTopStories() {
    return stories.map((i) => new TopStory(i)).toList();
  }
}
