import 'package:flutter/material.dart';
import 'package:migouabo/ui/pages/products_categorie.dart';
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
      //color: Colors.red,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          for (var i = 0; i < 10; i++)
            Container(
              child:   Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    child:  Container(
                      //margin: EdgeInsets.only(right: 15),
                      width: 75,
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductCategorie())),
                  ),
                  Center(
                    child: Text("fruit"),
                  )

                ],
              ),
              margin: EdgeInsets.only(right: 10),
            )

        ],
      ),
    );
  }
}
