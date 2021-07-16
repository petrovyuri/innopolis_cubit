import 'package:flutter/material.dart';

ThemeData get mainAppThemeData => ThemeData.light().copyWith(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          fontSize: 16,
          color: Colors.grey,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        alignLabelWithHint: true,
      ),
    );
