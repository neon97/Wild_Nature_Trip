import 'package:flutter/material.dart';
import 'package:wild_nature/home.dart';

class Details extends StatefulWidget {
  final String image;
  final String location;
  final String action;
  Details({this.image, this.location, this.action});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              height: height * 0.75,
              width: width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: height / 15, left: height / 30),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0)),
                  height: width / 8,
                  width: width / 8,
                  child: Center(
                    child: IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.grey,
                          size: 30.0,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        }),
                  ),
                ),
              ),
              top: 0.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(height / 25),
                  height: height * 0.55,
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(50.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        widget.action,
                        style: TextStyle(
                            fontSize: height / 30, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "\$29/",
                            style: TextStyle(
                                color: Colors.orange,
                                fontSize: height / 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.person_outline,
                            color: Colors.orange,
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            widget.location,
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: height / 50),
                          )
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            height: width / 8,
                            width: width / 5,
                            decoration: BoxDecoration(
                              color: colore,
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: height / 48),
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Icon(Icons.star, color: Colors.orangeAccent)
                              ],
                            ),
                          ),
                          people("assets/images/ava1.jpg", ""),
                          people("assets/images/ava2.jpg", ""),
                          people("assets/images/ava3.jpeg", ""),
                          people("", "+12"),
                        ],
                      ),
                      SizedBox(
                        height: height / 30,
                      ),
                      Text("Join us on a beautiful island of Oohu for",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: height / 50)),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text("this special event We'll provide you a",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: height / 50)),
                      SizedBox(
                        height: height / 120,
                      ),
                      Text("motocross, just bring good mood!",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: height / 50)),
                      SizedBox(
                        height: height / 40,
                      ),
                      Text(
                        "🔥 Only seats 7 left",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: height / 50),
                      ),
                      //well this a shorcut one yu can try too
                      SizedBox(
                        height: height / 40,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.all(height / 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        color: colore,
                        onPressed: () {},
                        child: Text(
                          "Book seat",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: height / 50),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget people(String image, String content) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: width / 9.5,
      width: width / 9.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.0),
          image: DecorationImage(image: AssetImage(image)),
          color: Color.fromRGBO(228, 228, 228, 1)),
      child: Center(
        child: Text(
          content == "" ? "" : content,
          style: TextStyle(color: Colors.grey[40]),
        ),
      ),
    );
  }
}

Color colore = Color.fromRGBO(58, 142, 155, 1);

//so almost we are done here !!!
//Thankyou guyz for watching this video
//say tuned stay subcribes stay healthy
//share comment and like the video//////
