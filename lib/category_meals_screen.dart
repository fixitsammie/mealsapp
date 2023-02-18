import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTitle;
  //CategoryMealsScreen(this.categoryId, this.categoryTitle);
  static const routeName = '/category-meals';
  @override
  Widget build(BuildContext context) {
    //final routeArgs =
    //    ModalRoute.of(context).settings.arguments as Map<String, String>;
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text(args['title'])),
      body: const Center(
        child: Text(
          'The Recipes for the category',
        ),
      ),
    );
  }
}
