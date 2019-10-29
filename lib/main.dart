import 'package:custom_staggered_grid/csgv/staggered_grid.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: 'Custom Staggered Grid View',
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered Grid"),
      ),
      body: Container(
        child: CustomStaggeredGrid(
          itemCount: 10,
          crossAxisCount: 2
        ).build(context),
      )
    );
  }
}