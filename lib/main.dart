import 'package:flutter/material.dart';
import 'package:hickup/screens/mobile_auth.dart';
import 'package:hickup/screens/sign_up_screen.dart';
import 'package:hickup/screens/welcome_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Cabin",
    ),
    initialRoute: WelcomeScreen.id,
    routes: {
      WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
      SignUpScreen.id: (BuildContext context) => SignUpScreen(),
      MobileAuthScreen.id: (context) => MobileAuthScreen()
    },
  ));
}
