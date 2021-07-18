import 'package:flutter/material.dart';
import 'package:journal/src/shared/constants/app_colors.dart';
import 'package:journal/src/shared/widgets/custom_icon_widget.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    required this.title,
    required this.description,
    required this.date,
    required this.color,
    Key? key,
  }) : super(key: key);

  final String title;
  final String description;
  final String date;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 1),
                    blurRadius: 5.0,
                    spreadRadius: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                  ),
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 2.0,
                    spreadRadius: 0,
                    color: Color.fromRGBO(0, 0, 0, 0.14),
                  ),
                  BoxShadow(
                    offset: Offset(0, 3),
                    blurRadius: 1.0,
                    spreadRadius: -2.0,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Wrap(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomIcon(
                  icon: Icons.date_range,
                ),
                CustomIcon(
                  icon: Icons.attach_file,
                ),
                CustomIcon(
                  icon: Icons.favorite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
