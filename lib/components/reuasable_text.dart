import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({this.text, this.textColor, this.size, this.alignment});

  final String text;
  final Color textColor;
  final double size;
  final Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: size),
      ),
    );
  }
}