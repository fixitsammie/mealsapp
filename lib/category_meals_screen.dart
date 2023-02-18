import 'package:flutter/material.dart';
import './dummy_data.dart';

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
    final categoryTitle = args['title'];
    final categoryId = args['id'];

    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(args['title'])),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text(categoryMeals[index].title);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
