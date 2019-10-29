import 'package:flutter/material.dart';

class CustomStaggeredGrid {
  int crossAxisCount;
  int itemCount;
  List<Widget> items = [];

  // List<Widget> generateWidget() {
  //   List.generate(crossAxisCount, (i) {
  //     print("Gene : "+i.toString());
  //     Container(
  //       width: 200.0,
  //       height: crossAxisCount % 2 == 0
  //           ? itemCount % 2 == 0 ? 300.0 : 200.0
  //           : itemCount % 2 == 0 ? 200.0 : 300.0,
  //       color: Colors.red,
  //       child: Text("Hello"),
  //     );
  //   });

  //   return items;
  // }

  List<Widget> generateWidget() {
    List.generate(crossAxisCount, (i) {
      items.add(
        Container(
          child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: crossAxisCount % 2 == 0
                  ? 400.0
                  : 200.0,
              color: Colors.red,
              child: Text("Hello"),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.all(10.0),
              height: crossAxisCount % 2 == 0
                  ? 350.0
                  : 200.0,
              color: Colors.red,
              child: Text("Hello Word"),
            ),
          ),
        ],
      ),
        ),
      );
    });

    return items;
  }

  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, i) {
          return Container(
            alignment: Alignment.topCenter,
              margin: EdgeInsets.all(10.0),
              child: Column(
                children: [Wrap(
                  children: generateWidget(),
                )],
              ));
        },
      ),
    );
  }

  CustomStaggeredGrid(
      {@required this.crossAxisCount, @required this.itemCount});
}
