import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:discussion/DiscussionPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Discussions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CarouselDemo()),
          );
        },
        label:Text("Discussions"),
        icon: Icon(FontAwesomeIcons.commentAlt),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50,),
      ),
    );
  }
}
