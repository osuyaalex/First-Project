import 'package:flutter/material.dart';
import 'package:newproject/src/helpers/commons.dart';
import 'package:newproject/src/helpers/screen_navigation.dart';
import 'package:newproject/src/screens/home.dart';
import 'package:newproject/src/widgets/Register.dart';
import 'package:newproject/src/widgets/title.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("images/logo.jpeg", width: 200, height: 200,),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: grey
                  ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon (Icons.email),
                      hintText: "Emails :"
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: grey
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon (Icons.remove_red_eye),
                        hintText: "Password :"
                    ),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12),
              child: Container(
                decoration: BoxDecoration(
                  color: yellow[700],
                    border: Border.all(
                        color: grey
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomText(text: "Login", size: 20, colors: white, weight: FontWeight.bold,),

                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    changeScreen(context, RegisterationScreen());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: CustomText(text: "Sign Up", colors: grey, weight: FontWeight.bold,),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: CustomText(text: "Forgotten Password?", colors: grey, weight: FontWeight.bold,),
                )
              ],
            )


          ],
        ),
      ),
    );
  }
}
