import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title:"7 Days UI Challenge!",
    theme:ThemeData(
      primarySwatch: Colors.blue,
    ),
    home:ColumnDemo(),
    debugShowCheckedModeBanner: false,
  ),

  );
}

class ColumnDemo  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SafeArea(
        child:Center(
          child:Card(
            elevation: 10,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.white,
            child:Padding(
              padding:EdgeInsets.all(30),
              child:Column(
                mainAxisSize:MainAxisSize.min,
                children: <Widget>[
//                 FlutterLogo(size: 40,),
                 Icon(
                   Icons.account_box,
                   size: 80,
                   color: Colors.orange,
                 ),

                 SizedBox(
                    height:15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Contact Name',
                      style: Theme.of(context).textTheme.headline,),
                      Text("Contact Description",
                          style:Theme.of(context).textTheme.caption)
                    ],
                  )
                ],
              )
            )
          )
        )
      ),
    );
  }

}