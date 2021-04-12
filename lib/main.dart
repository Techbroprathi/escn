import 'package:escn/Screens/Landingpage/landinghelper.dart';
import 'package:escn/Screens/Landingpage/landingservices.dart';
import 'package:escn/Services/Authentication/authentication.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:escn/constants/constants.dart';
import 'package:provider/provider.dart';
import 'Screens/Splashscreen/splashscreen.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ConstantColors constantColors = ConstantColors();
    return MultiProvider(
        child:MaterialApp(
          home: SplashScreen(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Login',
          theme: ThemeData(
            accentColor: constantColors.blueColor,
            fontFamily: 'Poppins',
            canvasColor: Colors.transparent,
          ),

        ),
        providers: [
          ChangeNotifierProvider(create: (_) => Authentication()),
          ChangeNotifierProvider(create: (_) => LandingHelper()),
          ChangeNotifierProvider(create: (_) => LandingService()),
        ]);
  }
}