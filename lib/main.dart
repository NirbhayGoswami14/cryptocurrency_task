import 'package:cryptocurrency_task/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
      primarySwatch: Colors.lightGreen,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
    ),
    home: HomeScreen(),
  ));
}
