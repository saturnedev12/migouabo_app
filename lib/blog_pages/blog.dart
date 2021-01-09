import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          title_section,
          article(),
          article(),
          article(),
          article(),
          article(),
          article(),
          article(),
          article(),
          article(),
        ],
      ),
    );
  }
}

Widget title_section = Container(
  padding: EdgeInsets.only(left: 15,),
  child: Row(
    children: [
      Text(
        "blog",
        style: TextStyle(
          fontSize: 30,
          fontFamily: "Chandas",
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
);

Widget article(){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(5),
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 0.5,
            blurRadius: 6,
            //offset: Offset(0,3),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: double.infinity,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(11),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("TRAVEL",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(Icons.favorite_border,color: Colors.grey,),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "Solo Escapes",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: "Chandas",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "How to get away from il all and refresh your inner thoughts",
                    style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      //fontSize: 20,
                      fontFamily: "Chandas",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Gene West",
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      //fontSize: 20,
                      fontFamily: "Chandas",
                    ),
                  ),
                  Text(
                    "December 21 | 12Min ",
                    style: TextStyle(
                      color: Colors.grey,
                      //fontWeight: FontWeight.bold,
                      //fontSize: 20,
                      fontFamily: "Chandas",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    decoration: BoxDecoration(
      color: Colors.transparent,
    ),
  );
}