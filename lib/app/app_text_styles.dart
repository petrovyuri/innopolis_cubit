import 'package:flutter/material.dart';

abstract class AppTextStyle {
  static final TextStyle titleTextTextStyle = TextStyle(
    fontSize: 27,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle textFieldTextStyle =
      TextStyle(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold);
}
