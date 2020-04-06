import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "7 Days UI Challenge!",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text("EXPLORE",
            style: TextStyle(fontSize: 16.0, color: Colors.black)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black,
          iconSize: 17.0,
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
        children: <Widget>[
          Container(
            height: 120.0,
            width: 120.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(10.0),
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(38.0),
                          color: Colors.orange),
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("Add Character",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.w600))
                  ],
                ),
                SizedBox(width: 20.0),
                listItem("images/IM.jpg", "IRONMAN", true),
                SizedBox(width: 20.0),
                listItem("images/CA.jpg", "Captain AMERICA", false),
                SizedBox(width: 20.0),
                listItem("images/CM.jpg", "Captain MARVEL", false),
                SizedBox(width: 20.0),
                listItem("images/HE.jpg", "HAWKEYE", true),
                SizedBox(width: 20.0),
                listItem("images/NR.jpg", "BLACK WIDOW", false),
                SizedBox(width: 20.0),
                listItem("images/HULK.jpg", "HULK", true),
                SizedBox(width: 20.0),
                listItem("images/THOR.jpg", "THOR", false),
              ],
            ),
          ),
          SizedBox(height:15.0),
          firstStyleRow("images/bw.jpg", "images/eternals.jpg","images/MARVEL.jpg" ),
          SizedBox(height: 10.0),
          secondStyleRow('images/es.jpg', 'images/ROCKET.jpg', 'images/MARVEL.jpg'),
          SizedBox(height: 10.0),
          infoRow()
        ],
      ),
    );
  }

  Widget firstStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
        height: 250.0,
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          children: <Widget>[
            Container(
                height: 250.0,
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage(imgPath1), fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      "Marvel Studios’ 'Black Widow': New Release Dates for 2020",
                      style: TextStyle(fontSize:8.0),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height:15.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height:30.0,
                          width:30.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image:DecorationImage(
                              image:AssetImage(avatarImg)
                            )
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("MARVEL STUDIOS",
                            textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.orange),
                            ),
                            Text("11:30AM",
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
            SizedBox(width:10.0),
            Container(
              height:250.0,
              width:(MediaQuery.of(context).size.width -30)/2,
              child:Container(
                height:250.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image:DecorationImage(
                    image:AssetImage(imgPath2),
                    fit:BoxFit.fill
                  )
                )
              )
            )
          ],
        ),
    );
  }

  Widget infoRow() {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'MARVEL',
                    textAlign: TextAlign.center,

                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              image: DecorationImage(
                                  image: AssetImage('images/MARVEL.jpg'),
                                  fit: BoxFit.contain)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'MARVEL',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                   color: Colors.orange),
                            ),
                            Text(
                              'APRIL 15 2019',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                   color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
            SizedBox(width: 10.0),
            Container(
                width: (MediaQuery.of(context).size.width - 30.0) / 2,
                height: 100.0,
                child: Column(children: <Widget>[
                  Text(
                    'MARVEL',
                    textAlign: TextAlign.center,

                  ),
                  SizedBox(height: 15.0),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.0),
                              image: DecorationImage(
                                  image: AssetImage('images/MARVEL.jpg'),
                                  fit: BoxFit.contain)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'MARVEL',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.orange),
                            ),
                            Text(
                              'Nov 16 2019',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ])
                ])
            ),
          ],
        )
    );
  }


  Widget secondStyleRow(String imgPath1, String imgPath2, String avatarImg) {
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        children: <Widget>[
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage(imgPath2), fit: BoxFit.cover)),
            ),
          ),
          SizedBox(width: 10.0),
          Container(
            height: 250.0,
            width: (MediaQuery.of(context).size.width - 30.0) / 2,
            child: Column(
              children: <Widget>[
                Text(
                  'Marvel Studios’ ETERNALS: New Release Dates for 2020',
                  style: TextStyle(
                    fontSize: 8
                  ),
                  textAlign: TextAlign.center,

                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          image: DecorationImage(
                              image: AssetImage(avatarImg), fit: BoxFit.contain)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MARVEL',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                               color: Colors.orange),
                        ),
                        Text(
                          '08:00PM',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 55),
                Container(
                  height: 125.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage(imgPath1), fit: BoxFit.cover)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget listItem(String imgPath, String name, bool available) {
    return Column(
      children: <Widget>[
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38.0),
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.cover)),
        ),
        SizedBox(height: 8.0),
        Row(
          children: <Widget>[
            Text(name,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600)),
            SizedBox(width: 4.0),
            available
                ? Container(
                    height: 10.0,
                    width: 10.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.orange),
                  )
                : Container()
          ],
        ),
      ],
    );
  }
}
