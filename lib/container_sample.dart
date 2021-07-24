import 'package:flutter/material.dart';

Widget createContainerSample(){
  return Center(
    child: Container(
      child: const Text('Hello World'),
      margin: const EdgeInsets.all(10.0),
      color: Colors.amber[600],
      width: 48.0,
      height: 48.0,
    )
  );
}