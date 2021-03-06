import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';



class GenreCard extends StatelessWidget {
  GenreCard({this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}