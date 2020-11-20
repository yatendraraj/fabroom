import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationPage(),
    );
  }
}

class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration : BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/lap.jpg'),
              fit: BoxFit.cover
          ),
        ),
        child: Align(
          alignment:Alignment.center,
          child: Positioned(
            top: 50.0,
            bottom: 20.0,   //change the position like relative and absolute in html.
            child: Text(
              'Coming Soon',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 30.0,
                color: Colors.yellow,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
