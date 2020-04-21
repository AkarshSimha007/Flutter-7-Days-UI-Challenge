import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/Helpers/Helpers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

final pages = [
  Container(
    decoration: BoxDecoration(
        color: Colors.blue,
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue[400], Colors.grey[300]])),
    child: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 100.0, left: 25),
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/icon.png')),
              borderRadius: BorderRadius.circular(75),
              color: Colors.black.withOpacity(0.1),
            ),
          ),
        ),
        Center(
          child: Container(
            height: 250,
            width: 270,
            decoration: BoxDecoration(
              color: Colors.grey[200].withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: <Widget>[
                IconButton(
                    icon: Icon(FontAwesomeIcons.handPaper),
                    color: Colors.red,
                    iconSize: 40,
                    onPressed: null),
                Text(
                  "STAY HOME.SAVE LIFES",
                  style: GoogleFonts.anton(color: Colors.black, fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 50),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "1. STAY home",
                        style: GoogleFonts.cuprum(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "2. KEEP a safe distance",
                        style: GoogleFonts.cuprum(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "3. WASH hands often",
                        style: GoogleFonts.cuprum(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "4. COVER your cough",
                        style: GoogleFonts.cuprum(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "5. SICK? Call the helpline",
                        style: GoogleFonts.cuprum(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  Container(
    height: double.infinity,
    width: double.infinity,
    color:Colors.grey,
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 200.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 120,
                height: 125,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 3.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        3.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/symptoms1.jpg')),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.1),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 3.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        3.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/symptoms2.jpg')),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Center(
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Text(
                "SYMPTOMS",
                style: GoogleFonts.francoisOne(fontSize: 25),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 3.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        3.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/symptoms3.jpg')),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.1),
                ),
              ),
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueAccent.withOpacity(0.5),
                      blurRadius: 6.0, // soften the shadow
                      spreadRadius: 3.0, //extend the shadow
                      offset: Offset(
                        5.0, // Move to right 10  horizontally
                        3.0, // Move to bottom 10 Vertically
                      ),
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage('images/symptoms4.jpg')),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black12.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ),
  Container(
    height: double.infinity,
    width: double.infinity,
    decoration: BoxDecoration(
        ),
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:80.0),
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 6.0, // soften the shadow
                    spreadRadius: 3.0, //extend the shadow
                    offset: Offset(
                      5.0, // Move to right 10  horizontally
                      3.0, // Move to bottom 10 Vertically
                    ),
                  )
                ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("How It Spreads",style: GoogleFonts.patuaOne(fontWeight: FontWeight.bold,fontSize: 25),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage('images/pc.jpg')
                          )
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('images/wb.jpg')
                            )
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/mg.jpg')
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 15),
                  child: Row(
                    children: <Widget>[
                      Text("Personal Contact",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Text("Contaminated Objects",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: Text("Mass Gatherings",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:40.0),
          child: Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.orange,
                  blurRadius: 6.0, // soften the shadow
                  spreadRadius: 3.0, //extend the shadow
                  offset: Offset(
                    5.0, // Move to right 10  horizontally
                    3.0, // Move to bottom 10 Vertically
                  ),
                )
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("PREVENTION",style: GoogleFonts.patuaOne(fontWeight: FontWeight.bold,fontSize: 25),)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('images/hw.jpg')
                            )
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage('images/wm.jpg')
                            )
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('images/cands.jpg')
                            )
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 15),
                  child: Row(
                    children: <Widget>[
                      Text("Sanitize your Hand ",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("Wear a Mask",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:12.0),
                        child: Text("Cover your cough or sneeze",style: TextStyle(fontSize: 9,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: LiquidSwipe(
            pages: pages,
            enableLoop: false,
            fullTransitionValue: 500,
            enableSlideIcon: true,
            waveType: WaveType.liquidReveal,
            positionSlideIcon: 0.7,
          ),
        ));
  }
}
