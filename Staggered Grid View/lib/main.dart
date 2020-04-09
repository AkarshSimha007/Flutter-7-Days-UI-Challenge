import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Staggered Grid View",
      theme:ThemeData(
        primaryColor: Color(0xFFFF5722)
      ),
      home:HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  HomePageState createState()=>HomePageState();
    // TODO: implement createState
  }



class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {},),
        title: Padding(
          padding: const EdgeInsets.only(left:80.0),
          child: Text("AHS",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {},)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: StaggeredGridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            staggeredTiles: [
              StaggeredTile.count(2, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
              StaggeredTile.count(4, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
            ],
            children: <Widget>[
              myPhotoList(
                  "https://www.pngkey.com/png/full/238-2381560_lpu-pre-sale-access-linkin-park-new-logo.png"),
              myPhotoList(
                  "https://i2.wp.com/tellmemore.media/wp-content/uploads/2017/07/1726035-thumb.jpg?fit=256%2C256&ssl=1"),
              myPhotoList(
                  "https://i.pinimg.com/originals/5d/b0/c1/5db0c1e6504c00439e3a841a1b4a9dbe.jpg"),
              myPhotoList(
                  "https://pbs.twimg.com/profile_images/378800000133216926/3c2ff909cf6f721604de6eeb525f3e9a.png"),
              myPhotoList(
                  "https://a.wattpad.com/useravatar/linkinweenie.256.744626.jpg"),
              myPhotoList(
                  "https://www3.pictures.zimbio.com/gi/Dave+Farrell+MTVu+Fandom+Awards+Comic+Con+YfI72eiCj41l.jpg"),
              myPhotoList(
                  "https://lastfm.freetls.fastly.net/i/u/ar0/4ad685da18334660ad9b186c4e203e93.jpg"),
              myPhotoList(
                  "https://a.wattpad.com/useravatar/bag_full_of_stars.256.64349.jpg"),
              myPhotoList(
                  "https://a3-images.myspacecdn.com/images02/123/185ce361c32140eba13f90fc42630fea/full.jpg"),
              captionText("LINKIN PARK", "Rock Band"),

              myPhotoList(
                  "https://miro.medium.com/max/3840/1*aZIRv6NNprTh4Re2UaGoIQ.jpeg"),
              myPhotoList(
                  "https://cdn.pinkvilla.com/files/styles/contentpreview/public/iron-man-phase-4_0.jpg?itok=5eZBUTV1"),
              myPhotoList(
                  "https://pbs.twimg.com/profile_images/685896589362216963/N2j7Rc9E_400x400.png"),
              myPhotoList(
                  "https://pbs.twimg.com/profile_images/594796707059077121/j8L9R0tw.jpg"),
              myPhotoList(
                  "https://d26oc3sg82pgk3.cloudfront.net/files/media/edit/image/34991/square_thumb%402x.jpg"),
              captionText("AVENGERS:ENDGAME","Avenge The Fallen"),

            ],
            padding: const EdgeInsets.all(4.0),
          ),
        ),
      ),

    );
  }

  Widget captionText(String titleText, String subText) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 2.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(titleText,
                  style: TextStyle(color: Colors.black, fontSize: 18.0),),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(subText,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myPhotoList(String MyImages) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              MyImages),
        ),
      ),

    );
  }

}