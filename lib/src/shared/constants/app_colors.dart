import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static const Color pink = Color.fromRGBO(245, 72, 127, 1);
  static const Color green = Color.fromRGBO(88, 179, 104, 1);
  static const Color darkPurple = Color.fromRGBO(52, 48, 144, 1);
  static const Color purple = Color.fromRGBO(134, 129, 252, 1);
  static const Color cyan = Color.fromRGBO(68, 194, 253, 1);
  static const Color yellow = Color.fromRGBO(250, 199, 54, 1);
  static const Color lightPurple = Color.fromRGBO(241, 240, 254, 1);
  static const Color textSecondary = Color.fromRGBO(0, 0, 0, 0.54);

  static const blueGradient = LinearGradient(
      colors: [
        cyan,
        darkPurple,
      ],
      begin: Alignment.topLeft,
      end: Alignment(0.8, 0.0),
      transform: GradientRotation(345 * pi / 180));

  static const blueGradientHeader = LinearGradient(
    colors: [
      cyan,
      darkPurple,
    ],
    stops: [
      0.1,
      0.58,
    ],
    transform: GradientRotation((60 * pi) / 180),
  );

  static const lightPurpleWhite = LinearGradient(
    colors: [
      Colors.white,
      lightPurple,
    ],
    stops: [
      0.85,
      0.95,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const scrollbarGradient = LinearGradient(
    colors: [
      Color.fromRGBO(241, 240, 253, 1),
      Color.fromRGBO(175, 172, 243, 1),
    ],
    stops: [
      0.85,
      0.95,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const addNoteButtonGradient = LinearGradient(
    colors: [
      cyan,
      darkPurple,
    ],
    begin: Alignment.topLeft,
    end: Alignment(0.8, 0.0),
    transform: GradientRotation(345 * pi / 180),
  );
}
