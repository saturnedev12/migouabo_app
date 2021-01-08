import 'package:flutter/material.dart';

class Compte extends StatefulWidget {
  @override
  _CompteState createState() => _CompteState();
}

class _CompteState extends State<Compte> {

  @override
  Widget build(BuildContext context) {
    double widthC = MediaQuery.of(context).size.width*100;
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildHeader(),
          SizedBox(height: 10,),
          _buildInfo(context, widthC),
        ],
      ),
    );
  }
}

Widget _buildHeader(){
  return Stack(
    children: [
      Ink(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
      ),
      Ink(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.black38,
        ),
      ),
      Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top:140),
        child: Column(
          children: [
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),
              color: Colors.grey.shade500,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: Colors.white,
                    width: 6.0,
                  )
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  //child: Image.network(''),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildInfo(BuildContext context,double width){
  return Container(
      padding: EdgeInsets.all(10),
  child:   Card(
  child: Container(
  alignment: Alignment.topLeft,
    padding: EdgeInsets.all(15),
    child: Column(
      children: <Widget>[
        Column(
          children: <Widget>[


            ListTile(
              leading: Icon(Icons.email,color: Colors.teal),
              title: Text("E-Mail"),
              subtitle: Text("email@gmailc.com"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.phone,color: Colors.teal),
              title: Text("Phone Number"),
              subtitle: Text("11-111111-11"),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person,color: Colors.teal),
              title: Text("About"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            ),
            Divider(),
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 12, vertical: 4),
              leading: Icon(Icons.my_location,color: Colors.teal),
              title: Text("Location"),
              subtitle: Text("Canada"),
            ),

          ],
        )
      ],
    ),
  ),
  )
  );
}

