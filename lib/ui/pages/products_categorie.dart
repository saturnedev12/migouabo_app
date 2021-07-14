import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class ProductCategorie extends StatefulWidget {
  const ProductCategorie({Key? key}) : super(key: key);

  @override
  _ProductCategorieState createState() => _ProductCategorieState();
}

class _ProductCategorieState extends State<ProductCategorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.chevron_left,color: Colors.black),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("FRUIT",style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(EvaIcons.searchOutline,color: Colors.black,),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(EvaIcons.options2Outline,color: Colors.black),
            onPressed: (){},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child:  Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 15,
            runSpacing: 10,
            children: [
              for(int i=0;i<20;i++)
                Container(
                  width: 160,
                  height: 210,

                  decoration: BoxDecoration(
                      color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                  ),
                )
            ],
          ),
        ),
      )
    );
  }
}
