import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ButtomBotton extends StatelessWidget {
  ButtomBotton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
          buttonTitle,
          style: kLargeButtonTextStyle,
        )),
        color: kBottomBarColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomBarHeight,
      ),
    );
  }
}
