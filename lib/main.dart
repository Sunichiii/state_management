import 'package:flutter/material.dart';
import 'dart:math';

import 'color_changer.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChanger(),
    );
  }
}

