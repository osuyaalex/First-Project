import 'dart:ui' as prefix0;

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:newproject/small_floating_button.dart';
import 'package:newproject/src/helpers/commons.dart';
import 'package:newproject/src/modules/products.dart';
import 'package:newproject/src/widgets/title.dart';


class Details extends StatefulWidget {
  final Product product;

  Details({@required this.product});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 250,

            child: Stack(
              children: <Widget>[

                Carousel(
                  images: [
                    AssetImage('images/${widget.product.image}'),
                    AssetImage('images/${widget.product.image}'),
                    AssetImage('images/${widget.product.image}'),
                  ],
                  dotBgColor: white,
                  dotColor: grey,
                  dotIncreasedColor: red,
                  autoplay: false,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: black), onPressed: (){
                          Navigator.pop(context);
                    }
                    ),

                    Stack(
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
                          bottom: 5,
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
                    )
                  ],
                ),
                Positioned(
                  right: 14,
                  bottom: 60,
                  child: Container(
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: grey, blurRadius: 3, offset: Offset(2, 3)),
                      ],

                    ),
                    child: Padding(padding: const EdgeInsets.all(6),
                      child: Icon(
                        Icons.favorite,
                        size: 22,
                        color: red,
                      ),
                    ),

                  )
                ),

              ],
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 14),
                  child: CustomText(text: widget.product.name, size: 22, weight: FontWeight.bold, colors: red,),

                ),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: CustomText(text: "\$" + widget.product.price.toString(), size: 20, weight: FontWeight.w400, colors: red,),
                ),

              ],
            ),
            SizedBox(height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: IconButton(icon: Icon(Icons.remove, size: 28,color: red,), onPressed: null),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color: red,
                        boxShadow: [
                          BoxShadow(
                            color: red,
                          )

                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(24, 10, 24, 10),
                      child: CustomText( text: "Add To Cart", colors: white, size: 24, weight: FontWeight.bold,),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 40),
                  child: IconButton(icon: Icon(Icons.add, size: 28,color: red,), onPressed: null),
                ),
              ],
            )


          ],
        ),
      ),
    );
  }
}
