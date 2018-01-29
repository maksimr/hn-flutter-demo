import 'package:flutter/material.dart';
import 'package:hn/components/StoryLink.dart';
import 'package:hn/models/Story.dart';

class StoryPage extends StatelessWidget {
  final Story story;

  StoryPage(this.story);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildBar(),
          new Center(child: buildBody(context)),
        ],
      ),
    );
  }

  buildBar() {
    return new AppBar(
      title: new Text(
        story.title,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  buildBody(context) {
    return new Padding(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          buildLink(),
        ],
      ),
      padding: new EdgeInsets.all(40.0),
    );
  }

  buildTitle() {
    return new Text(story.title);
  }

  buildLink() {
    return new StoryLink(story);
  }

  back(context) {
    Navigator.of(context).pop();
  }
}
