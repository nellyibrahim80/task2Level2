
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sign_up/screens/Home.dart';
import 'package:sign_up/test.dart';

import 'login.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreenView(),
        '/login': (context) => MyLogin(),

      },
      //home: MyLogin()
    );
  }
}

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
        centered: true,
        splash: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/food.jpg",
                //width: 400,
                //height: 200,
              ),
              Text("Food Recipe Task",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32)),
             // const Text("Welcome Food Recipe Project",style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        //disableNavigation: true,
        animationDuration: Duration(seconds:3),
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.fade,
        splashIconSize: 300,
        backgroundColor: Colors.black45,
        nextScreen: MyLogin());
  }
}
