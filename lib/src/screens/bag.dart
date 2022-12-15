import 'package:flutter/material.dart';
import 'package:newproject/src/helpers/commons.dart';
import 'package:newproject/src/modules/featured_products.dart';
import 'package:newproject/src/modules/products.dart';
import 'package:newproject/src/widgets/title.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product = Product(
  name: "Burgers",
  price: 99.99,
  rating: 4.3,
  vendor: "Shoprite",
  wishlist: true,
  image: "images (1).jpeg");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text: "Shopping", size: 18, weight: FontWeight.w400,), //row cannot be used in appbar thus the serenren lol
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 6),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),


                  child: Stack(
                    children: <Widget>[
                      Image.asset("images/better shoppin.png", width: 25, height: 25,),

                    ],
                  ),
                ),
                Positioned(
                  bottom: 9,
                  right: 9,
                  child: Container(

                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: grey,
                              offset: Offset(2, 1),
                              blurRadius: 3,



                            )
                          ]

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6, right: 1),
                        child: CustomText(text: "2", colors: black, size: 15,),
                      )
                  ),
                )
              ],
            ),
          )
        ],

      ),
      body: SafeArea(child:

      ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 18),
            child: CustomText( text: "Your Food Cart", colors:grey, size: 30, weight: FontWeight.w700, ),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [
                  BoxShadow(
                    color: red[50],
                    offset: Offset(0, 3),
                    blurRadius: 5


                  ),
                ]
              ),child: Row(
              children: <Widget>[
                Image.asset(
                  "images/${product.image}",
                  height: 100,
                  width: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(text: TextSpan(children: [
                      TextSpan(text: product.name + "\n", style: TextStyle(color: black, fontSize: 20)),
                      TextSpan(text: "\$" + product.price.toString() + "\n", style: TextStyle(color: black, fontSize: 20))
                    ])),
                    SizedBox(
                      width: 50,
                    ),
                    IconButton(icon: Icon(Icons.delete), onPressed: null)
                  ],

                )
              ],
            ),


            ),
          )
        ],
      )
      ),


    );

  }
}
