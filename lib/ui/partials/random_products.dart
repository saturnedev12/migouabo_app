import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class RandomProductsSection extends StatefulWidget {
  const RandomProductsSection({Key? key}) : super(key: key);

  @override
  _RandomProductsSectionState createState() => _RandomProductsSectionState();
}

class _RandomProductsSectionState extends State<RandomProductsSection> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 180,
        child: ScrollSnapList(
          onItemFocus: (e){},
          itemSize: 150,
          itemBuilder: (context, e) => Container(
            width: 140,
            margin: EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          itemCount: 4,
          dynamicItemSize: true,
          scrollDirection: Axis.horizontal,
          // dynamicSizeEquation: customEquation, //optional
        ),
      );
  }
}
