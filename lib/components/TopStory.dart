import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hn/models/Story.dart';
import 'package:hn/resources/topstory.dart';
import 'package:hn/components/Score.dart';
import 'package:hn/components/StoryTitle.dart';

class TopStory extends StatefulWidget {
  final int id;

  TopStory(this.id);

  @override
  TopStoryState createState() => new TopStoryState(id);
}

class TopStoryState extends State<TopStory> {
  final int id;
  Story story;

  TopStoryState(this.id);

  @override
  initState() {
    super.initState();
    loadTopStoryDetails();
  }

  @override
  Widget build(BuildContext context) {
    if (story == null) return new Text("");

    return new ListTile(
      title: new StoryTitle(story),
      leading: new Score(story.score),
    );
  }

  loadTopStoryDetails() async {
    Map data = await topstory(id);
    if (mounted) setState(() => story = new Story(data));
  }
}
