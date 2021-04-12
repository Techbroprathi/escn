import 'dart:async';

import 'package:escn/Screens/Landingpage/landing.dart';
import 'package:escn/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ConstantColors constantColors = ConstantColors();
      @override
    void initState(){
      Timer(
Duration(seconds: 1),
          () => Navigator.pushReplacement(context, PageTransition(child: LandingPage(), type: PageTransitionType.leftToRight))
      );
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:constantColors.darkColor,
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Weeb',
            style: TextStyle(
              fontFamily: 'Poppins',
                  fontSize: 30.0,
              color: constantColors.whiteColor,
              fontWeight: FontWeight.bold
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Net',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25.0,
                  color: constantColors.lightBlueColor,
                  fontWeight: FontWeight.bold
              ),),
            ]
          ),
        ),
      ),
    );
  }
}
