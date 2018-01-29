import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ExternalLink extends StatelessWidget {
  final String text;
  final String href;

  ExternalLink(this.text, this.href);

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new InkWell(
        onTap: onTap,
        child: new Text(
          text,
          style: new TextStyle(
            color: new Color.fromRGBO(0, 102, 33, 0.8),
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }

  onTap() {
    openLink();
  }

  openLink() async {
    if (href != null && (await canLaunch(href))) {
      launch(href);
    }
  }
}
