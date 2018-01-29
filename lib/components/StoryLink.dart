import 'package:flutter/material.dart';
import 'package:hn/components/ExternalLink.dart';
import 'package:hn/models/Story.dart';

class StoryLink extends StatelessWidget {
  final Story story;

  StoryLink(this.story);

  @override
  Widget build(BuildContext context) {
    if (story.url == null) return new Text("");

    return new ExternalLink(
      story?.url?.host,
      story?.url?.toString(),
    );
  }
}
