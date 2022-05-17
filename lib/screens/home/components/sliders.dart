
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Sliders extends StatefulWidget{

  @override
  State<StatefulWidget> createState() =>StateSliders();
}
class StateSliders extends State<Sliders>{
  CarouselController _controller  = CarouselController();
  var _current = 0;
  var imgList = ["assets/images/s1.jpg","assets/images/s2.jpg","assets/images/s3.jpg","assets/images/s4.jpg"];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return  Column(
     children: [
       Container(


         child: CarouselSlider.builder(
           carouselController: _controller ,
           options: CarouselOptions(

             height: 200,

             initialPage: 0,
             autoPlay: true,
             enlargeCenterPage: true,
             aspectRatio: 2.0,
       onPageChanged: (index, reason) {
     setState(() {
       _current = index;
     }); }

           ),

           itemCount: 4,
           itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
               Container(
                 child:   Image.asset(imgList[itemIndex]),
               ),


         ),
       ),
       Row(
         mainAxisAlignment: MainAxisAlignment.center,
         children: imgList.asMap().entries.map((entry) {
           return GestureDetector(
             onTap: () => _controller.animateToPage(entry.key),
             child: Container(
               width: 12.0,
               height: 12.0,
               margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
               decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   color: (Theme.of(context).brightness == Brightness.dark
                       ? Colors.white
                       : Colors.black)
                       .withOpacity(_current == entry.key ? 0.9 : 0.4)),
             ),
           );
         }).toList(),
       ),
     ],

   );
  }
}