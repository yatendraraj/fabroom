import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Version extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VersionScreen(),
    );
  }
}

class VersionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset(
                'images/version.jpg',
                width: MediaQuery.of(context).size.width,
                // height: 240.0,
                fit: BoxFit.cover,
              ),
              ListTile(
                leading: Icon(Icons.verified_user_rounded),
                title:Text(
                  "Version 1.0",
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
