import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId; 
  // final String categoryTitile; 

  // CategoryMealsScreen(this.categoryId , this.categoryTitile);

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context).settings.arguments as Map<String , String>;
    final categoryTitle = routeArg['title'];
    final categoryId = routeArg['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text(
          'the recipes for cetegory ',
        ),
      ),
    );
  }
}
