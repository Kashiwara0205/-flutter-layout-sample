import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GridViewPage> createState() => GridViewSample();
}

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

class GridViewSample extends State<GridViewPage>  {

  @override
  Widget build(BuildContext context) {
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
}
