import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../styles/styles.dart';
import '../screens/trending.dart';
import '../widgets//toprow.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;
  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0',
      style: titlestyle,
    ),
    Trending(),
    Text(
      'Index 2',
      style: titlestyle,
    ),
    Text(
      'Index 3',
      style: titlestyle,
    ),
    Text(
      'Index 4',
      style: titlestyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 4, right: 4, top: 4, bottom: 4),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BuildTopIcons(),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0, bottom: 8),
                  child: Text('Top Plant', style: titlestyle),
                ),
                buildMenuItems(),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                ),
                _widgetOptions.elementAt(_index),
               // BuildIconMenu(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildMenuItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        MenuItem(
          style: menustyle,
          title: 'All',
          isSelected: _index == 0 ? true : false,
          onTap: () {
            _onItemTapped(0);
          },
        ),
        MenuItem(
          style: menustyle,
          title: 'Trending',
          isSelected: _index == 1 ? true : false,
          onTap: () {
            _onItemTapped(1);
          },
        ),
        MenuItem(
          style: menustyle,
          title: 'Indoor',
          isSelected: _index == 2 ? true : false,
          onTap: () {
            _onItemTapped(2);
          },
        ),
        MenuItem(
          style: menustyle,
          title: 'Outdoor',
          isSelected: _index == 3 ? true : false,
          onTap: () {
            _onItemTapped(3);
          },
        ),
      ],
    );
  }
}

class MenuItem extends StatefulWidget {
  final String title;
  final TextStyle style;
  final bool isSelected;
  final Function onTap;
  MenuItem({Key key, this.title, this.style, this.isSelected, this.onTap})
      : super(key: key);

  @override
  _MenuItemState createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(widget.title,
          style: widget.isSelected ? selectedstyle : widget.style),
      onTap: widget.onTap,
    );
  }
}
