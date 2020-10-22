import 'package:fabrooms/components/body.dart';
import 'package:fabrooms/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: kIconcolour,
            ),
            onPressed: null),
        actions: <Widget>[
          IconButton(
            icon: ClipRect(
              child: Image.asset("images/welcome.webp"),
            ),
            onPressed: null,
          ),
        ],
        title: Text(
          "Fabrooms",
          style: TextStyle(
            color: Colors.lightBlue,
            fontSize: 40,
            fontFamily: "Satisfy",
          ),
        ),
      ),
      body: Body(),
    );
  }
}
