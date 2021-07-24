import 'package:flutter/material.dart';

Widget createAlignSample(){
return Center(
  child: Container(
    height: 200.0,
    width: 200.0,
    color: Colors.blue[50],
    child: const Align(
      alignment: Alignment.topRight,
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
);
}