import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.title, this.routes});

  final String title;
  final Function routes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: routes,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: kLargeTextBtn,
          ),
        ),
        color: bottomContainerColour,
        width: double.infinity,
        height: bottomContainerHeight,
      ),
    );
  }
}
