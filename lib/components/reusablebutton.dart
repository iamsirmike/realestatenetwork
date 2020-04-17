import 'package:flutter/material.dart';
import 'package:real_estate_network/util/util.dart';
class ReusableButton extends StatelessWidget {
  const ReusableButton({
    this.onpress,
    this.text,
    this.size,
  });
  final Function onpress;
  final String text;
  final double size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Text(
        text,
        style: TextStyle(
            color: UIColors.textColor,
            fontSize: size,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

