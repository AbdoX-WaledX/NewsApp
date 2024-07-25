import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/Category_Vcard.dart';

class CategoryVlist extends StatelessWidget {
  CategoryVlist({super.key,required this.articles});

  List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return CategoryVcard(
          articlemodel: articles[index],
        );
      },
    ));
  }
}
