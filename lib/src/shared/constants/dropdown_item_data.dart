import 'package:flutter/material.dart';
import 'package:journal/src/shared/constants/app_colors.dart';

final List<DropDownItemData> list = [
  DropDownItemData(
    color: AppColors.pink,
    value: "pink",
  ),
  DropDownItemData(
    color: AppColors.green,
    value: "green",
  ),
  DropDownItemData(
    color: AppColors.darkPurple,
    value: "darkPurple",
  ),
  DropDownItemData(
    color: AppColors.cyan,
    value: "lightBlue",
  ),
  DropDownItemData(
    color: AppColors.yellow,
    value: "yellow",
  ),
];

class DropDownItemData {
  final Color color;
  final String value;

  DropDownItemData({
    required this.color,
    required this.value,
  });
}
