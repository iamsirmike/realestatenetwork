import 'package:flutter/material.dart';

InputDecoration inputDecoration({Icon icon, Icon sicon, String labelText}) {
  return InputDecoration(
    labelText: '$labelText',
    labelStyle: TextStyle(color: Color(0xffCDCED2)),
    prefixIcon: icon,
    suffixIcon: sicon,
  );
}
