import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mealsapp/screens/categories_screen.dart';
import 'package:mealsapp/screens/category_meals_screen.dart';
import 'package:mealsapp/screens/meal_detail_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'DeliMeals',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            canvasColor: Color.fromRGBO(255, 254, 229, 1),
            fontFamily: 'Raleway',
            textTheme: ThemeData.light().textTheme.copyWith(
                  bodyLarge: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  bodyMedium: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                  titleMedium: TextStyle(
                      fontSize: 20,
                      fontFamily: 'RobotoCondensed',
                      color: Color.fromRGBO(20, 51, 51, 1)),
                )),
        initialRoute: '/',
        routes: {
          '/': (context) => CategoriesScreen(),
          CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
          MealDetailScreen.routeName: (context) => MealDetailScreen(),
        },
        onGenerateRoute: (settings) {
          print(settings.arguments);
//          return MaterialPageRoute(
          //           builder: (ctx) => CategoriesScreen(),
          //       );
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (ctx) => CategoryMealsScreen());
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeals'),
      ),
      body: Center(
        child: Text('Navigation Time!'),
      ),
    );
  }
}
