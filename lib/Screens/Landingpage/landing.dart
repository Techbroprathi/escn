import 'package:escn/Screens/Landingpage/landinghelper.dart';
import 'package:escn/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatelessWidget {
  final ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: constantColors.whiteColor,
      body: Stack(
        children: [
bodyColor(),
          Provider.of<LandingHelper>(context,listen: false).bodyImage(context),
          Provider.of<LandingHelper>(context,listen: false).taglineText(context),
          Provider.of<LandingHelper>(context,listen: false).mainBotton(context),
          Provider.of<LandingHelper>(context,listen: false).PrivacyText(context),

        ],
      ),
    );
  }
  bodyColor(){
    return Container(
      decoration: BoxDecoration(
        gradient:  LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.5,0.9
          ],
          colors: [
            constantColors.darkColor,
            constantColors.blueGreyColor,
          ]
        ),
      ),
    );
  }
}
