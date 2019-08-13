import 'package:flutter/material.dart';

import 'components/cities_stripes.dart';
import 'components/slide_animation.dart';

void main() {
  runApp(MaterialApp(
    title: 'Beautiful Animation',
    home: Home(),
    theme: ThemeData(
      fontFamily: 'Avenir',
    ),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Asia",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Avenir Bold'),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.dashboard,
                  color: Colors.black,
                ),
              ),
            ]),
        body: ListView(
          primary: true,
          children: <Widget>[
            CitiesStripe(),
            SlideAnimation(),
          ],
        ),
      ),
    );
  }
}
