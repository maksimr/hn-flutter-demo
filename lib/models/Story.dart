class Story {
  String title;
  Uri url;
  int score;

  Story(Map params) {
    title = params["title"];
    url = Uri.parse(params["url"]);
    score = params["score"];
  }
}
