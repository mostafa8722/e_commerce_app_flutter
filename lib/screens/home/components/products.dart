
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget{

  List<Product> products = [
   Product(id:1,title: "product1", image: "assets/images/product1.jpg", price: "2000", old_price: "2000"),
   Product(id:2,title: "product2", image: "assets/images/product2.jpg", price: "3000", old_price: "3000"),
   Product(id:3,title: "product3", image: "assets/images/product3.jpg", price: "4000", old_price: "4000"),
   Product(id:4,title: "product4", image: "assets/images/product4.jpg", price: "5000", old_price: "5000"),
   Product(id:5,title: "product5", image: "assets/images/product5.jpg", price: "6000", old_price: "6000"),
   Product(id:6,title: "product6", image: "assets/images/product6.jpg", price: "7000", old_price: "7000"),
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 300,
      child: new GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,

          ),

           itemCount: products.length,
           itemBuilder:(BuildContext context,int index) =>CustomGridCard(index)
      )
    );
    
  }
  Widget CustomGridCard(index){
    return Card(
      child: Hero(
        tag: products[index],
        child: new Material(
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer:Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(products[index].title),
                  title:Text(products[index].price,style: TextStyle(color: Colors.red,te),) ,
                  subtitle:Text(products[index].old_price,style: TextStyle(color: Colors.black),) ,
                ),
              ) ,
              child:Container(
                height: 200,
                child: Image.asset(products[index].image,fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class Product {
 int id;
 String title;
 String image;
 String price;
 String old_price;

 Product({
    required this.id,
   required this.title,
   required this.image,
   required this.price,
   required this.old_price,
  });
}