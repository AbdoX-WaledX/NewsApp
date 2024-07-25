import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final Dio dio = Dio();
  // NewsService({required this.dio});

  //NewsService(this.category)
  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://api.goperigon.com/v1/all?category=Business&sourceGroup=top100&showReprints=false&apiKey=330a0188-624d-4e19-b0e5-a9b3bd45f52b&sourceCountry=us&title=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articlemodel = ArticleModel.fromJson(article);
        articleList.add(articlemodel);
        print(article);
      }
      return articleList;
    } on Exception {
      return [];
    }
  }
}
