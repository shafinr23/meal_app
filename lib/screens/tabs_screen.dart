import 'package:flutter/material.dart';
import '../widgets/main_drawar.dart';
import './favorites_screen.dart';
import './categories_screen.dart';
import '../model/meal.dart';

class TabsScreen extends StatefulWidget {

  final List<Meal> favoriteMeals;
  TabsScreen(this.favoriteMeals);
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages ;
  int _selectedPAgeIndex = 0;

  @override
  void initState() {
    _pages = [
    {'page': CategoriesScreen(), 'title': 'Categorories'},
    {'page': FavoritesScreen(widget.favoriteMeals), 'title': 'favorite'},
  ];
    super.initState();
  }
  void _selectPage(int index) {
    setState(() {
      _selectedPAgeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPAgeIndex]['title']),
      ),
      drawer: Drawer(
        child: MainDrawar(),
      ),
      body: _pages[_selectedPAgeIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPAgeIndex,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('favorites'),
          ),
        ],
      ),
    );
  }
}
