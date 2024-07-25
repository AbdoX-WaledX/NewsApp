import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class CategoryVcard extends StatelessWidget {
   ArticleModel articlemodel;
   CategoryVcard({super.key, required this.articlemodel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(articlemodel.image ??
                        "https://cdn.pixabay.com/photo/2024/05/26/10/15/bird-8788491_1280.jpg"))),
            child: const Padding(
              padding: EdgeInsets.only(top: 90),
            ),
          ),
        ),
        Text(
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          articlemodel.title ?? "",
          style:
              const TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            articlemodel.subtitle ?? "",
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        )
      ],
    );
  }
}
