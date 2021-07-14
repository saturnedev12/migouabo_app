import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:migouabo/ui/partials/carousel.dart';
import 'package:migouabo/ui/partials/categories_section.dart';
import 'package:migouabo/ui/partials/random_products.dart';

import 'package:migouabo/ui/partials/bottom_bar.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:search_page/search_page.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: Padding(
          padding: EdgeInsets.all(7),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(EvaIcons.bellOutline),color: Colors.black,),
          IconButton(
                  onPressed: () => showSearch(
                  context: context,
                  delegate: SearchPage(
                    items: [],

                    searchLabel: 'Search Products',
                    suggestion: Center(
                      child: Text('Filter people by name, surname or age'),
                    ),
                    failure: Center(
                      child: Text('No person found :('),
                    ),
                    filter: (person) => [
                      /*person.name,
                      person.surname,
                      person.age.toString(),*/
                    ],
                    builder: (person) => ListTile(
                      /*title: Text(person.name),
                      subtitle: Text(person.surname),
                      trailing: Text('${person.age} yo'),*/
                    ),
                  ),), icon: Icon(EvaIcons.searchOutline),color: Colors.black),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CategorieSection(),
            CarouselSection(),
            RandomProductsSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.shoppingBagOutline),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
