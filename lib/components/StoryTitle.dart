import 'package:flutter/widgets.dart';
import 'package:hn/components/StoryLink.dart';
import 'package:hn/models/Story.dart';

class StoryTitle extends StatelessWidget {
  final Story story;

  StoryTitle(this.story);

  @override
  Widget build(BuildContext context) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(),
        buildLink(),
      ],
    );
  }

  buildTitle() {
    return new Text(
      story.title,
      overflow: TextOverflow.ellipsis,
    );
  }

  buildLink() {
    return new StoryLink(story);
  }
}
