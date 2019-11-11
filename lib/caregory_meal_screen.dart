import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {

  final String categoryId; 
  final String categoryTitile; 

  CategoryMealsScreen(this.categoryId , this.categoryTitile);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitile),
      ),
      body: Center(
        child: Text(
          'the recipes for cetegory ',
        ),
      ),
    );
  }
}
