
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cats extends StatelessWidget{
  List<Cat>   items = [
    Cat(title: "cat1", icon: "assets/images/cat1.png"),
    Cat(title: "cat2", icon: "assets/images/cat2.png"),
    Cat(title: "cat3", icon: "assets/images/cat3.png"),
    Cat(title: "cat4", icon: "assets/images/cat4.png"),
    Cat(title: "cat5", icon: "assets/images/cat5.png"),
    Cat(title: "cat6", icon: "assets/images/cat6.png"),
    Cat(title: "cat7", icon: "assets/images/cat7.png"),
    Cat(title: "cat8", icon: "assets/images/cat8.png"),
    Cat(title: "cat9", icon: "assets/images/cat9.png"),
    Cat(title: "cat10", icon: "assets/images/cat10.png"),

  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: new Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("categories",style: TextStyle(fontSize: 17),),
              Icon(Icons.more_horiz),
            ],
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount:items.length,
              itemBuilder:(context,index)=>customBuilder(index),


            ),
          )
        ],
      ),
    );
  }
  Widget customBuilder(index){
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          child: CircleAvatar(

            child: Image.asset(items[index].icon.toString()),
            backgroundColor: Colors.transparent,
            radius: 10,
          ),
        ),
        Center(child: Text(items[index].title),)
      ],
    );
  }
}

class Cat{
  String title;
  String icon;
  Cat({
    required this.title,required this.icon
});
}