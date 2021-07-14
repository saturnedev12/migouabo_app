import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_state.dart';
import 'package:carousel_slider/utils.dart';
import 'package:flutter/animation.dart';

class CarouselSection extends StatefulWidget {
  const CarouselSection({Key? key}) : super(key: key);

  @override
  _CarouselSectionState createState() => _CarouselSectionState();
}

class _CarouselSectionState extends State<CarouselSection> {
  int _currentIndex = 0;
  final List<String> imagesList = [
    'https://cdn.pixabay.com/photo/2020/11/01/23/22/breakfast-5705180_1280.jpg',
    'https://cdn.pixabay.com/photo/2016/11/18/19/00/breads-1836411_1280.jpg',
    'https://cdn.pixabay.com/photo/2019/01/14/17/25/gelato-3932596_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/04/04/18/07/ice-cream-2202561_1280.jpg',
  ];
  final List<String> titles = [
    ' Coffee ',
    ' Bread ',
    ' Gelato ',
    ' Ice Cream ',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            // enlargeCenterPage: true,
            //scrollDirection: Axis.vertical,
            onPageChanged: (index, reason) {
              setState(
                    () {
                  _currentIndex = index;
                },
              );
            },
          ),
          items: imagesList
              .map(
                (item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.grey,
                margin: EdgeInsets.only(
                  top: 10.0,
                  bottom: 10.0,
                ),
                elevation: 4.0,
                shadowColor: Colors.grey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      /*Image.network(
                        item,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),*/
                      Center(
                        child: Text(
                          '${titles[_currentIndex]}',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            backgroundColor: Colors.black45,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imagesList.map((urlOfItem) {
            int index = imagesList.indexOf(urlOfItem);
            return Container(
              width: 7.0,
              height: 10.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentIndex == index
                    ? Color.fromRGBO(0, 0, 0, 0.8)
                    : Color.fromRGBO(0, 0, 0, 0.3),
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
