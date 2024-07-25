import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_builder.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          category,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
            color: Colors.white, // Changed to black for better contrast
            fontFamily: 'Roboto', // Example of a custom font
          ),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Changed to black
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black), // Changed to black
            onPressed: () {
              // Add search functionality here
            },
          ),
        ],
        elevation: 0.0, // Removed default elevation for a flat look
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 127, 147, 184), Colors.lightBlueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          NewsListBuilder(category: category),
        ],
      ),
    );
  }
}
