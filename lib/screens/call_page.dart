import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CallScreen(),
    );
  }
}

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Team Members Contact Details',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
              fontFamily: "Satisfy"),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer1(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage("images/akash.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer2(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage("images/sumit.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer3(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage("images/vaishi.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: myDetailsContainer4(),
                          ),
                        ),
                        Container(
                          width: 200,
                          height: 200,
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(24.0),
                            child: Image(
                              fit: BoxFit.cover,
                              alignment: Alignment.topRight,
                              image: AssetImage("images/yatte.jpg"),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget myDetailsContainer1() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Akash Verma",
          style: TextStyle(
              color: Color(0xffe6020a),
              fontSize: 40.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Contact No. \u00B7 +91 7060209545",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 25.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}

Widget myDetailsContainer2() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Sumit Kumar",
          style: TextStyle(
              color: Color(0xffe6020a),
              fontSize: 40.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Contact No. \u00B7 +91 8273415047",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 25.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}

Widget myDetailsContainer3() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Vaishnavi Shivhare",
          style: TextStyle(
              color: Color(0xffe6020a),
              fontSize: 40.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
<<<<<<< HEAD
        child: Container(
            child: Text(
          "Contact No. \u00B7 +91 9655076433",
          style: TextStyle(
              color: Colors.black54,
=======
        child: Container(child: Text("Contact No. \u00B7 +91 9455076433",
          style: TextStyle(color: Colors.black54,
>>>>>>> d85e10f87dbed3a52f89ab83e1a9ec08237c3d30
              fontSize: 25.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}

Widget myDetailsContainer4() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Yatendra Rajput",
          style: TextStyle(
              color: Color(0xffe6020a),
              fontSize: 40.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            child: Text(
          "Contact No. \u00B7 +91 8869039016",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 25.0,
              fontFamily: "Satisfy",
              fontWeight: FontWeight.bold),
        )),
      ),
    ],
  );
}
