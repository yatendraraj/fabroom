import 'package:fabrooms/components/size_config.dart';
import 'package:fabrooms/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: profileView(),
    );
  }

  Widget profileView() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(30, 50, 30, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Text(
                'Profile Details',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Satisfy"),
              ),
              Container(
                height: 24.0,
                width: 24.0,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                radius: 70.0,
                child: ClipOval(
                  child: Image.asset(
                    'images/new1.webp',
                    height: 150,
                    width: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: Container(
                  height: 40.0,
                  width: 40.0,
                  child: IconButton(
                    icon: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      //photo upload....
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              height: getProportionateScreenHeight(500),
              width: getProportionateScreenWidth(400),
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.all(Radius.circular(10))
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)]),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 20, 4),
                    child: Container(
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Name',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "Satisfy"),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "Satisfy"),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "Satisfy"),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Gender',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "Satisfy"),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          border:
                              Border.all(width: 1.0, color: Colors.white70)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 4),
                    child: Container(
                      height: 60.0,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Interested In',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: "Satisfy"),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(width: 1.0, color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
