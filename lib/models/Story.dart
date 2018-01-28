class Story {
  String title;
  Uri url;
  int score;

  Story(Map params) {
    title = params["title"];

    if (params["url"] != null) {
      url = Uri.parse(params["url"]);
    }

    score = params["score"];
  }
}
