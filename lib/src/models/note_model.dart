import 'package:flutter/cupertino.dart';

class Note {
  String title;
  String description;
  String date;
  Color color;
  bool hasDate;
  bool hasFile;
  bool isFavorite;

  Note({
    required this.title,
    required this.description,
    required this.date,
    required this.color,
    required this.hasDate,
    required this.hasFile,
    required this.isFavorite,
  });
}
