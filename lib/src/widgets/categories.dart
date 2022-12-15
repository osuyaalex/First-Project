import 'package:flutter/material.dart';
import 'package:newproject/src/modules/category.dart';

import '../helpers/commons.dart';
import 'title.dart';

List<Category> categoriesList = [
 Category(name: "Vegtables", image:"download (1).jpeg"),
 Category(name: "Sea Food", image:"download (2).jpeg"),
 Category(name: "Fast Food ", image:"download (3).jpeg"),
 Category(name: "Deserts", image:"images (1).jpeg"),
 Category(name: "Delights", image:"images.jpeg"),
 Category(name: "Traditional Cousine", image:"images (3).jpeg")


];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child:ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return  Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: red[50],
                            offset: Offset(3, 3),
                            blurRadius: 40
                        )
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.all(3),
                    child: Image.asset("images/${categoriesList[index].image}", width:55,),
                  ),
                ),
                SizedBox(height: 10,),
                CustomText(text: categoriesList[index].name, size: 14, colors: grey,)
              ],
            ),
          );
        },

      ),
    )
    ;
  }
}
