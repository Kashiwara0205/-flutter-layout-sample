import 'package:flutter/material.dart';

class LayoutNameContainerFactory{
  static Container create(String name){
    return Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 30, 
          color: Colors.black,
          decoration: TextDecoration.none)
      ),
      color: Colors.teal[100]
    );
  }
}

Widget createGridViewSample(){
  return GridView.count(
    primary: false,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 5,
    mainAxisSpacing: 5,
    crossAxisCount: 6,
    children: <Widget>[
      LayoutNameContainerFactory.create("A"),
      LayoutNameContainerFactory.create("B"),
      LayoutNameContainerFactory.create("C"),
      LayoutNameContainerFactory.create("D"),
      LayoutNameContainerFactory.create("E"),
      LayoutNameContainerFactory.create("F"),
      LayoutNameContainerFactory.create("G"),
      LayoutNameContainerFactory.create("H"),
    ],
  );
}
    