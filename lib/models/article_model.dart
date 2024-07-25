class ArticleModel {
  String? image;
  String? title;
  String? subtitle;

  ArticleModel({this.image, this.subtitle, this.title});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json["imageUrl"],
        title: json["title"],
        subtitle: json["description"]);
  }
}
