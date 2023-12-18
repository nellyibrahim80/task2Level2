
import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sign_up/screens/Home.dart';


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
String? finalUserName="";
bool finalisLogged=false;
class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
@override
  void initState()  {
  GetSharedData().whenComplete(() async {
    Timer(Duration(seconds: 4), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => finalisLogged? HomePage() :MyLogin(),
          ));
    });
  });
    // TODO: implement initState
    super.initState();
  }
  Future GetSharedData() async{
    final SharedPreferences pref=await SharedPreferences.getInstance();
    var isLogged=pref.getBool("isLogged") ;
    var userN=pref.getString("userN");
setState(() {
  finalUserName=userN;
  finalisLogged=isLogged!;
});
  }

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


