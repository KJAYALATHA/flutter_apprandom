import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("random"),
        ),
        body: Rando(),
      ),
    ),
  );
}

class Rando extends StatefulWidget {
  @override
  _RandomState createState() => _RandomState();
}

class _RandomState extends State<Rando> {
  int max = 9999, min = 1000;
  int text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Text("$text"),
        ),
        RaisedButton(
          onPressed: () {
            setState(() {
              text = min + Random().nextInt(max - min);
            });
          },
        ),
      ],
    );
  }
}
