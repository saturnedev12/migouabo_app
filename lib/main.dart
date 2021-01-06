import 'package:flutter/material.dart';
import 'package:migouabo/category_pages/category.dart';
import 'home_pages/home.dart';
import 'category_pages/category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String _title = 'migouabo app';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
   Home(),
   Categorys(),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: Business',
      style: optionStyle,
    ),
    Text(
      'Index 5: School',
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

        title: Bar,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'catégories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_sharp),
            label: 'blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'compte',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_outlined),
            label: 'à propos',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget Bar = Row(
  children: [
    Container(
      width: 40,
      height: 40,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color:Colors.green[200],
        image: DecorationImage(
          image: AssetImage("assets/logo/logo.png"),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(50),
      ),


    ),

Expanded(
child: TextField(
decoration: InputDecoration(
  filled: true,
  fillColor: Colors.white,
border: OutlineInputBorder(
  borderRadius: BorderRadius.circular(10)
),
hintText: "rechercher un produit ...",
  prefixIcon: Icon(Icons.search),
),
),
),
IconButton(
  icon: Icon(
  Icons.shopping_cart,
  color: Colors.red,
),
onPressed: () {
  print("your menu action here");
},
),
]
);












