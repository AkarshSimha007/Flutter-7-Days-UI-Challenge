import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "7 Days UI Challenge!",
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                CircularSoftButton(
                    icon: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                  size: 40.0,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Text(
                    "Favourite Album",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 55.0),
                  child: CircularSoftButton(
                      icon: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 40.0,
                  )),
                ),
              ],
            ),
            SizedBox(height: 30.0),
            Stack(
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    gradient: LinearGradient(
                      colors: [Colors.black, Colors.white],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ),
                Positioned(
                    top: 10,
                    left: 10.0,
                    right: 10.0,
                    bottom: 10.0,
                    child: CircleAvatar(
                        backgroundImage: Image.asset(
                      'images/ht.jpg',
                      fit: BoxFit.cover,
                    ).image))
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Text(
                "Crawling",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Linkin Park - Hybrid Theory",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32),
                  width: double.infinity,
                  height: 15,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 32),
                    width: 180,
                    height: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "2:14",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "3.29",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CircularSoftButton(
                    icon: Icon(
                  Icons.skip_previous,
                  color: Colors.black,
                  size: 25.0,
                )),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: CircularSoftButton(icon: Icon(Icons.play_arrow,size: 40,color: Colors.red,
                  ),
                    radius: 35,
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: CircularSoftButton(
                      icon: Icon(
                    Icons.skip_next,
                    color: Colors.black,
                    size: 25.0,
                  )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularSoftButton extends StatelessWidget {
  double radius;
  final Widget icon;

  CircularSoftButton({Key key, this.radius, @required this.icon})
      : super(key: key) {
    if (radius == null || radius <= 0) radius = 22;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(radius / 2),
      child: Stack(
        children: <Widget>[
          Container(
            width: radius * 2,
            height: radius * 2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(1, 1), blurRadius: 1),
                BoxShadow(
                    color: Colors.white, offset: Offset(-1, -1), blurRadius: 1),
              ],
            ),
          ),
          Positioned.fill(child: icon),
        ],
      ),
    );
  }
}
