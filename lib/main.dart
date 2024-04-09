// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Color(0xFF0A0E21), centerTitle: true),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.purple),
          scaffoldBackgroundColor: Color(0xFF0A0E10),
          textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.white))),
      home: InputPage(),
    );
  }
}