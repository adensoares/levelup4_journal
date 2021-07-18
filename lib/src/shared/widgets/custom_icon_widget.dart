import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    this.icon,
  }) : super(key: key);

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: Color.fromRGBO(0, 0, 0, 0.54),
    );
  }
}
