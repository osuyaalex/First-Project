import 'package:flutter/material.dart';
import 'package:newproject/src/helpers/screen_navigation.dart';
import 'package:newproject/src/screens/details.dart';
import 'package:newproject/src/widgets/title.dart';

import '../helpers/commons.dart';
import 'products.dart';

List<Product> productsList = [
  Product(
      name: "Burgers",
      price: 99.99,
      rating: 4.3,
      vendor: "Shoprite",
      wishlist: true,
      image: "images (1).jpeg"),
  Product(
      name: "Blueberry Omlette",
      price: 149.99,
      rating: 4.2,
      vendor: "Shoprite",
      wishlist: false,
      image: "images.jpeg"),

];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 14, 20, 12),
              child: GestureDetector(
                onTap: (){
                changeScreen(_, Details(product: productsList[index],));
                },
                child: Container(
                  height: 400,
                  width: 200,
                  decoration: BoxDecoration(color: white, boxShadow: [
                    BoxShadow(
                        color: red[50], offset: Offset(15, 5), blurRadius: 30)
                  ]),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        "images/${productsList[index].image}",
                        height: 100,
                        width: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: productsList[index].name,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: grey[300],
                                        offset: Offset(1, 1),
                                        blurRadius: 4)
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(4),
                                child:productsList[index].wishlist ? Icon(
                                  Icons.favorite,
                                  size: 20,
                                  color: red,
                                )
                                :Icon(
                                  Icons.favorite_border,
                                  size: 20,
                                  color: red,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: CustomText(
                              text: productsList[index].rating.toString(),
                              colors: grey,
                              size: 14,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: red,
                            size: 16,
                          ),
                          Icon(
                            Icons.star,
                            color: grey,
                            size: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: CustomText(
                              text: "\$${productsList[index].price}",
                              weight: FontWeight.bold,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ));
  }
}
