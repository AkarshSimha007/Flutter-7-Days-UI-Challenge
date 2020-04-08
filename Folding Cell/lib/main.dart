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
          child: FoldingCellSimpleDemo(),
        ),
      )),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class FoldingCellSimpleDemo extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          SimpleFoldingCell(
              key: _foldingCellKey,
              frontWidget: _buildFrontWidget(),
              innerTopWidget: _buildInnerTopWidget(),
              innerBottomWidget: _buildInnerBottomWidget(),
              cellSize: Size(MediaQuery.of(context).size.width, 125),
              padding: EdgeInsets.all(15),
              animationDuration: Duration(milliseconds: 300),
              borderRadius: 10,
              onOpen: () => print('cell opened'),
              onClose: () => print('cell closed')),
        ],
      ),
    );
  }

  Widget _buildFrontWidget() {
    return Container(
        color: Colors.yellow[800],
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text("Semester I",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'OpenSans',
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Text("Details",
                      style: TextStyle(
                          color: Color(0xFF2e282a),
                          fontFamily: 'OpenSans',
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800)),
                ),
                FlatButton(
                  onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
                )
              ],
            )
          ],
        ));
  }

  Widget _buildInnerTopWidget() {
    return Container(
        color: Color(0xFFff9234),
        alignment: Alignment.center,
        child: Text("SUBJECTS",
            style: TextStyle(
                color: Color(0xFF2e282a),
                fontFamily: 'OpenSans',
                fontSize: 20.0,
                fontWeight: FontWeight.w800)));
  }

  Widget _buildInnerBottomWidget() {
    return Container(
      color: Color(0xFFecf2f9),
      alignment: Alignment.bottomCenter,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30.0,
          ),
          Text(
            "Total Credits:25",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: FlatButton(
                onPressed: () => _foldingCellKey?.currentState?.toggleFold(),
              )),
        ],
      ),
    );
  }
}
