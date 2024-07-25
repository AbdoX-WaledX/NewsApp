import 'package:flutter/material.dart';
import 'package:news_app/widgets/Category_list.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cloud,
              color: Colors.blueAccent,
              size: 28,
            ),
            SizedBox(width: 8),
            Text(
              "News",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 24,
                fontFamily: 'Roboto', // Use a custom font
              ),
            ),
            Text(
              "Cloud",
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.w500,
                fontSize: 24,
                fontFamily: 'Roboto', // Use a custom font
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(9.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(child: SizedBox(height: 22)),
            const NewsListBuilder(
              category: "general",
            ),
          ],
        ),
      ),
    );
  }
}
