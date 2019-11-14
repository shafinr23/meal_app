import 'package:flutter/material.dart';
import '../widgets/main_drawar.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';

  final Function saveFilters;
  final Map<String, bool>currentFilter;
  FilterScreen(this.currentFilter,this.saveFilters);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  initState() {
    _glutenFree = widget.currentFilter['gluten'];
    _lactoseFree = widget.currentFilter['lactose'];
    _vegan = widget.currentFilter['vegan'];
    _vegetarian = widget.currentFilter['vagitarian'];
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String subtitle,
    bool value,
    Function updatevalue,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: updatevalue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('yourFilters'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final seletedFilter = {
                'gluten': _glutenFree,
                'lactose': _lactoseFree,
                'vegan': _vegan,
                'vagitarian': _vegetarian,
              };
              widget.saveFilters(seletedFilter);
            },
          ),
        ],
      ),
      drawer: MainDrawar(),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50),
            child: Text(
              'Adjust your meal',
              style: Theme.of(context).textTheme.title,
            ),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                _buildSwitchListTile(
                    'gluten free ', 'include gluten free food ', _glutenFree,
                    (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'Lactose free ', 'include lactos free food ', _lactoseFree,
                    (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitchListTile('vegan  ', 'include vegan  food ', _vegan,
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
                _buildSwitchListTile(
                    'vegiterian  ', 'include vegiterian  food ', _vegetarian,
                    (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
