
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app_flutter/screens/home/components/cats.dart';
import 'package:e_commerce_app_flutter/screens/home/components/products.dart';
import 'package:e_commerce_app_flutter/screens/home/components/sliders.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    CarouselController _controller  = CarouselController();
    var imgList = ["assets/images/s1.jpg","assets/images/s2.jpg","assets/images/s3.jpg","assets/images/s4.jpg"];

    return SingleChildScrollView(
      child: Column(
        children: [
          Sliders(),
          Cats(),
          Products()
        ],
      ),
    );

  }
}