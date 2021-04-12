import 'package:escn/Screens/homepage.dart';
import 'package:escn/Services/Authentication/authentication.dart';
import 'package:escn/constants/constants.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LandingHelper with ChangeNotifier {
  ConstantColors constantColors = ConstantColors();
  Widget bodyImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/login.png'),
        ),
      ),
    );
  }

  Widget taglineText(BuildContext context) {
    return Positioned(
      top: 450.0,
      left: 10.0,
      child: Container(
        constraints: BoxConstraints(maxWidth: 170.0),
        child: RichText(
          text: TextSpan(
              text: 'Are You    ',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 30.0,
                  color: constantColors.whiteColor,
                  fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'Nerd , Weeb ',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.0,
                      color: constantColors.lightBlueColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: '?',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 25.0,
                      color: constantColors.redColor,
                      fontWeight: FontWeight.bold),
                ),
              ]),
        ),
      ),
    );
  }

  Widget mainBotton(BuildContext context) {
    return Positioned(
        top: 600.0,
        left: 20,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  emailAuthsheeet(context);
                },
                child: Container(
                  child: Icon(
                    EvaIcons.emailOutline,
                    color: constantColors.yellowColor,
                  ),
                  height: 60.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: constantColors.yellowColor,
                    ),
                    borderRadius: BorderRadius.circular((10.0)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('Signin with Google');
                  Provider.of<Authentication>(context, listen: false)
                      .signInWithGoogle()
                      .whenComplete(() => Navigator.pushReplacement(
                          context,
                          PageTransition(
                              child: HomePage(),
                              type: PageTransitionType.leftToRight)));
                },
                child: Container(
                  child: Icon(
                    EvaIcons.google,
                    color: constantColors.redColor,
                  ),
                  height: 60.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: constantColors.redColor,
                    ),
                    borderRadius: BorderRadius.circular((10.0)),
                  ),
                ),
              ),
              GestureDetector(
                child: Container(
                  child: Icon(
                    EvaIcons.facebook,
                    color: constantColors.blueColor,
                  ),
                  height: 60.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: constantColors.blueColor,
                    ),
                    borderRadius: BorderRadius.circular((10.0)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget PrivacyText(BuildContext context) {
    return Positioned(
      top: 720.0,
      left: 20.0,
      right: 20.0,
      child: Container(
        child: Column(
          children: [
            Text("By Continuing You Agree The WeebNet's Terms of ",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.0,
                )),
            Text("Services & Privacy Policy ",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 12.0,
                ))
          ],
        ),
      ),
    );
  }

  emailAuthsheeet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 150.0),
                  child: Divider(
                    thickness: 4.0,
                  ),
                ),
                SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MaterialButton(
                        color: constantColors.blueColor,
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: constantColors.whiteColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {}),
                    MaterialButton(
                        color: constantColors.redColor,
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                              color: constantColors.whiteColor,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {}),
                  ],
                )
              ],
            ),
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: constantColors.blueGreyColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0))),
          );
        });
  }
}
