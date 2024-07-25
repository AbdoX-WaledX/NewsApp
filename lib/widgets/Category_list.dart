import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<CategoryModel> categories = [
    CategoryModel(
      categoryName: "GENERAL",
      image: "assets/general.avif",
    ),
    CategoryModel(
      categoryName: "HEALTH",
      image: "assets/health.avif",
    ),
    CategoryModel(
      categoryName: "SCIENCE",
      image: "assets/science.avif",
    ),
    CategoryModel(
      categoryName: "SPORTS",
      image: "assets/sports.avif",
    ),
    CategoryModel(
      categoryName: "TECHNOLOGY",
      image: "assets/technology.jpeg",
    ),
    CategoryModel(
      categoryName: "BUSINESS",
      image: "assets/business.avif",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CategoryCard(category: categories[index]),
              );
            },
          ),
        ),
      ],
    );
  }
}
