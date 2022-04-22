// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hickup/screens/sign_up_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = "welcome";
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.overlay),
            image: AssetImage(
              "images/welcome_bg.jpg",
            ),
          ),
        ),
        child: Column(
          children: [
            Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HICKUPS!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 56,
                          fontFamily: "SquarePeg"),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Text(
                        "Come dwell into the magic of love",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Cabin"),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith(
                            (states) => Colors.white),
                      ),
                      onPressed: () {
                        Navigator.popAndPushNamed(context, SignUpScreen.id);
                      },
                      child: Text(
                        "Lets Get Started",
                        style: TextStyle(color: Colors.red[800], fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      child: Text(
                        "Already have an account ?",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
