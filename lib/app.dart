import 'package:e_commerce_app_flutter/screens/home/home_screen.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,

       primarySwatch: Colors.red,

      ),
      debugShowCheckedModeBanner: false,
      title: "Flutter E-Commerce",
      home:HomeScreen() ,
    );

  }
}