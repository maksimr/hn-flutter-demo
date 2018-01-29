import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:hn/models/Story.dart';
import 'package:hn/resources/topstory.dart';
import 'package:hn/components/Score.dart';
import 'package:hn/components/StoryTitle.dart';

class TopStory extends StatefulWidget {
  static const double HEIGHT = 50.0;

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
    if (story == null) return buildPlaceholder();

    return new ListTile(
      title: new StoryTitle(story),
      leading: new Score(story.score),
      onTap: onTap,
    );
  }

  buildPlaceholder() {
    return new Placeholder(
      color: new Color(0),
      strokeWidth: 0.0,
      fallbackHeight: TopStory.HEIGHT,
    );
  }

  onTap() {
    openLink();
  }

  openLink() async {
    var url = story?.url?.toString();
    if (url != null && (await canLaunch(url))) {
      launch(story.url.toString());
    }
  }

  loadTopStoryDetails() async {
    Map data = await topstory(id);
    if (mounted) setState(() => story = new Story(data));
  }
}
