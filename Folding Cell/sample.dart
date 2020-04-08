import 'package:flutter/cupertino.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "7 Days UI Challenge!",
      home: SafeArea(
          child: Scaffold(
        body: Material(
          child: FoldingCell(),
        ),
      )),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FoldingCell extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Semester Information'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.indigo,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              child: SimpleFoldingCell(
                key: _foldingCellKey,
                frontWidget: FrontWidget(),
                innerTopWidget: InnerTopWidget(),
                innerBottomWidget: InnerBottomWidget(),
                cellSize: Size(MediaQuery.of(context).size.width, 125),
                padding: EdgeInsets.all(10.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Container InnerTopWidget() {
  return Container(
    color: Colors.black12,
  );
}

Container InnerBottomWidget() {
  return Container(
    color: Colors.white,
  );
}

Widget FrontWidget() {
  return Container(
    color: Colors.indigo,
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black12,
            ),
          ),
        ),
        FlatButton(
          onPressed: ()=> _foldingCellKey?.currentStae?.toggleFold();

        ),
        Expanded(
          flex: 2,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
          ),
        ),
      ],
    ),
  );
}
