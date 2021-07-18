import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hintText,
    this.keyboardType,
    this.minLines,
    this.border,
    this.suffixIcon,
    this.fontWeight,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? keyboardType;
  final int? minLines;
  final InputBorder? border;
  final Widget? suffixIcon;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: minLines,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        border: border,
        suffixIcon: suffixIcon,
      ),
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: 16.0,
        color: Color.fromRGBO(0, 0, 0, 0.54),
      ),
      keyboardType: keyboardType,
    );
  }
}
