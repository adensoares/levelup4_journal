import 'package:flutter/material.dart';
import 'package:journal/src/shared/constants/app_colors.dart';

class AppTextStyles {
  static const TextStyle white48w700Montserrat = TextStyle(
    fontSize: 48.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: -0.05,
  );

  static const TextStyle darkPurple24w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 24.0,
    color: AppColors.darkPurple,
  );

  static const TextStyle cyan16w400Roboto = TextStyle(
    fontFamily: "Roboto",
    fontWeight: FontWeight.w400,
    fontSize: 16.0,
    color: AppColors.cyan,
  );

  static const TextStyle white72w700Montserrat = TextStyle(
    fontSize: 72.0,
    fontWeight: FontWeight.w700,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: -0.05,
  );

  static const TextStyle white13w300Montserrat = TextStyle(
    fontSize: 13.0,
    fontWeight: FontWeight.w300,
    color: Colors.white,
    fontFamily: "Montserrat",
    letterSpacing: 0.165,
  );

  static const TextStyle white12w200Roboto = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w300,
    fontSize: 12.0,
    fontStyle: FontStyle.italic,
    fontFamily: "Roboto",
  );
}
