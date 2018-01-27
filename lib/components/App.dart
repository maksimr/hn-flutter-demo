import 'package:flutter/material.dart';
import 'package:hn/components/TopStories.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hacker News Demo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new TopStories(),
    );
  }
}
