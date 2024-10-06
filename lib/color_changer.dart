import 'dart:math';

import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  Color _backgroundColor = Colors.white;
  void _changeColor(){
    setState(() {
      _backgroundColor = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _changeColor,
      child: Scaffold(
        backgroundColor: _backgroundColor,
        body: Center(
          child: Text("Tap anywhere to change the coloe of screen",style: TextStyle(fontSize: 20, color: Colors.black87),),
        ),
      ),
    );
  }
}
