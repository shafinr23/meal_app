import 'package:flutter/material.dart';
import '../widgets/main_drawar.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filters';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yourFilters'),
      ),
      drawer: MainDrawar(),
      body: Center(
        child: Text('filter'),
      ),
    );
  }
}
