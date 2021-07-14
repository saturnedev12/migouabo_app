import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: [
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
      BottomNavigationBarItem(icon: Icon(EvaIcons.home), label: 'home'),
    ]);
  }
}
