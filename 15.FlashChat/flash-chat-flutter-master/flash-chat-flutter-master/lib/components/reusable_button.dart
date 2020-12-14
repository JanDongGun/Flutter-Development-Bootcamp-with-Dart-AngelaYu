import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({this.color, this.onPress, this.btnText});

  final Color color;
  final Function onPress;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            btnText,
          ),
        ),
      ),
    );
  }
}
