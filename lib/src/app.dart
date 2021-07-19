import 'package:flutter/material.dart';
import 'package:journal/src/features/home/home_page.dart';
import 'package:journal/src/features/new_note/new_note_page.dart';
import 'package:journal/src/features/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Journal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashPage(),
    );
  }
}
