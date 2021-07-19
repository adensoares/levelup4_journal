import 'package:flutter/material.dart';
import 'package:journal/src/shared/constants/app_colors.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 56.0,
        height: 56.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: AppColors.addNoteButtonGradient,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 1),
                blurRadius: 18.0,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.12),
              ),
              BoxShadow(
                offset: Offset(0, 6),
                blurRadius: 10.0,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.14),
              ),
              BoxShadow(
                offset: Offset(0, 3),
                blurRadius: 5.0,
                spreadRadius: -1,
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
            ]),
        child: Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
