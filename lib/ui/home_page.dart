import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(7),
          child: CircleAvatar(
            backgroundColor: Colors.grey,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_active_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [CategorieSection()],
        ),
      ),
    );
  }
}

class CategorieSection extends StatefulWidget {
  const CategorieSection({Key? key}) : super(key: key);

  @override
  _CategorieSectionState createState() => _CategorieSectionState();
}

class _CategorieSectionState extends State<CategorieSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 119,
      padding: EdgeInsets.all(10),
      color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 0; i < 10; i++)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 15),
                  width: 75,
                  height: 75,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Text("fruit")
              ],
            ),
        ],
      ),
    );
  }
}
