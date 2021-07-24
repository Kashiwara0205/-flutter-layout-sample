import 'package:flutter/material.dart';

Widget createPaddingSample(){
  return const Card(
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: Text('Hello World!'),
    ),
  );
}