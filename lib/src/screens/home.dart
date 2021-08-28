import 'package:flutter/material.dart';
import 'package:newproject/small_floating_button.dart';
import 'package:newproject/src/modules/featured_products.dart';
import 'package:newproject/src/widgets/bottom_navigation.dart';
import 'package:newproject/src/widgets/categories.dart';
import 'package:newproject/src/widgets/title.dart';
import '../commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomText(
                    text: "what would you like to eat?",
                    size: 18,
                  )

                ),
                Stack(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                    Positioned(
                      top: 12,
                      right: 12,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(1, 1),
                      blurRadius: 4
                    )
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search, color: red,),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Find food and resturant",
                      border: InputBorder.none
                    ),
                  ),
                  trailing: Icon(Icons.filter_list, color: red,),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),

            Categories(),

            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Featured", size: 20, colors: grey,),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: "Popular", size: 20, colors: grey,),
            ),
             Stack(
               children: <Widget>[
                 Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(40)

                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(8),
                   child: ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                       child: Image.asset("images/images (2).jpeg")),
                   ),
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    SmallButton(Icons.favorite),
                      Padding(padding: const EdgeInsets.only(right: 45.0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: Row(
                          children: <Widget>[
                            Padding(padding: const EdgeInsets.all(2.0),
                            child: Icon(Icons.star, color: red, size: 20,),
                            ),
                            Text("4.5"),
                          ],
                        ),
                      ),
                      )
                    ],
                  ),
                ),
                 Positioned.fill(child: Align(
                   alignment: Alignment.bottomCenter,
                   child: Container(
                     height: 100,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20),
                         ),
                       gradient:  LinearGradient(
                         begin: Alignment.bottomCenter,
                         end: Alignment.topCenter,
                         colors: [
                           Colors.black.withOpacity(0.8),
                           Colors.black.withOpacity(0.7),
                           Colors.black.withOpacity(0.6),
                           Colors.black.withOpacity(0.6),
                           Colors.black.withOpacity(0.4),
                           Colors.black.withOpacity(0.1),
                           Colors.black.withOpacity(0.05),
                           Colors.black.withOpacity(0.025),
                         ]
                       )
                     ),
                   ),
                 ),
                 ),
                 Positioned.fill(child: Align(
                   alignment: Alignment.bottomCenter,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Padding(padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                       child: RichText(text: TextSpan(children: [
                         TextSpan(text: "Pizza \n", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: white)),
                         TextSpan(text: "by: ", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: white)),
                         TextSpan(text: "Stylz Food", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: white)),

                       ]
                       )
                       ),
                       ),
                       Padding(padding: const EdgeInsets.all(45.0),
                       child: RichText(text: TextSpan(children: [
                         TextSpan(text: "\$12.99", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w300, color: white))
                       ], style: TextStyle(color: black)
                       ),),
                       )
                     ],
                   ),
                 ))
               ],
             )


          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
           BottomNavIcon(
             image: "images.png",
             name: "home",
           ),
            BottomNavIcon(
              image: "images (1).png",
              name: "shop",
            ),
            BottomNavIcon(
              image: "images (6).jpeg",
              name: "Near by",
            ),
            BottomNavIcon(
              image: "images (4).jpeg",
              name: "Profile",
            ),
            SizedBox(
              height: 2,
            ),



          ],
        ),
      ),
    );
  }
}
