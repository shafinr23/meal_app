import 'package:flutter/material.dart';


class MealDetailScreen extends StatelessWidget {
//for route 
  static const routeName = '/meal-detail-screen'; 

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String ;
    return Scaffold(
      appBar:  AppBar(
        title: Text(mealId),
      ),
      body: Center(
      child:Text('meal - $mealId'),
    ),
    );
    
  }
}