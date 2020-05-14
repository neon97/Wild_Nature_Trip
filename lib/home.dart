import 'package:flutter/material.dart';
import 'package:wild_nature/details.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/wall.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Wild Nature",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Derange",
                  fontSize: height / 16),
            ),
            SizedBox(
              height: height / 30,
            ),
            Text(
              "Exploring the beauty of nature",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: height / 50),
            ),
            SizedBox(
              height: height / 100,
            ),
            Text("and go on some of our",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: height / 50,
                    color: Colors.white)),
            SizedBox(
              height: height / 100,
            ),
            Text(
              "wonderful trips",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: height / 50),
            ),
            SizedBox(
              height: height / 10,
            ),
            Container(
              height: height / 2.8,
              width: width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  card("assets/images/fabio2.png", "Mountain Ride",
                      "Oohu, Hawaii"),
                  card("assets/images/surf.jpeg", "Surfing in Ohansa",
                      "Oohu, Hawaii"),
                ],
              ),
            ),
            SizedBox(
              height: height / 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                  size: 30.0,
                ),
                Text(
                  "Swipe uo to see more",
                  style: TextStyle(color: Colors.white, fontSize: height / 60),
                )
              ],
            ),
            SizedBox(
              height: 30.0,
            )
          ],
        ),
      ),
    );
  }

  Widget card(String image, String action, String location) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
        left: width / 18,
        right: width / 18,
      ),
      child: GestureDetector(
        child: Container(
          height: height / 2.8,
          width: width / 2,
          child: Stack(
            children: <Widget>[
              Container(
                height: height / 2.8,
                width: width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover),
                    color: Colors.transparent),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                height: height / 2.8,
                width: width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35.0),
                  gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.1), Colors.black],
                      begin: FractionalOffset.center,
                      end: FractionalOffset.bottomCenter),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      action,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: height / 45,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on, size: 20.0, color: Colors.grey),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          location,
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Details(
                    image: image,
                    location: location,
                    action:action
                  )));
        },
      ),
    );
  }
}

//weel te first page is almost competed now lets go ahead for thesecond page...
