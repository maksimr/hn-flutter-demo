import 'package:flutter/widgets.dart';

class Score extends StatelessWidget {
  final int score;

  Score(this.score);

  @override
  Widget build(BuildContext context) {
    return new Text(
      score.toString(),
      style: new TextStyle(fontWeight: weight(), color: color()),
    );
  }

  color() {
    return new Color(0xFF42A5F5);
  }

  weight() {
    if (score < 10) return FontWeight.w100;
    if (score < 50) return FontWeight.w300;
    if (score < 100) return FontWeight.w500;
    if (score < 200) return FontWeight.w700;
    return FontWeight.w900;
  }
}
