import 'package:escn/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  ConstantColors constantColors = ConstantColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constantColors.redColor,
    );
  }
}
