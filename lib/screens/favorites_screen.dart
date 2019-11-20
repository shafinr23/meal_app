import 'package:flutter/material.dart';
import '../model/meal.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;

  FavoritesScreen(this.favoriteMeal);


  @override
  Widget build(BuildContext context) {
    return Center(
        child:Text('you have ni favorite yest start adding some .'), 
    );
  }
}