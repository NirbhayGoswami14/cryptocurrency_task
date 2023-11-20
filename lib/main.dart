import 'package:cryptocurrency_task/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    theme: ThemeData(
      useMaterial3: true,
    primarySwatch:Colors.lightGreen

    ),
    home:HomeScreen(),
  ));
}

