import 'package:fabrooms/components/body.dart';
import 'package:fabrooms/const.dart';
import 'package:flutter/material.dart';
import 'package:fabrooms/components/navigation_bar.dart';

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
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(

              decoration: BoxDecoration(
                color: Color(0xffe6e6fa),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Image.asset('images/new.png')),

                  ],
                ),
              ),
            ),
            CustomListTile(icon: Icons.person,text: 'Profile',onTap: () {},),
            CustomListTile(icon: Icons.notifications,text: 'Notification',onTap: () {},),
            CustomListTile(icon: Icons.filter_alt_outlined,text: 'Filter',onTap: () {},),
            CustomListTile(icon: Icons.logout,text: 'Log out',onTap: () {},),
            // CustomListTile(icon: Icons.location_on_outlined,text: 'Know Your Location',onTap: () {},),
            CustomListTile(icon: Icons.mail,text: 'Contact Us',onTap: () {},),
            CustomListTile(icon: Icons.phone,text: 'Call Us',onTap: () {},),
            CustomListTile(icon: Icons.domain_verification_sharp,text: 'version 1.0',onTap: () {},),
          ],
        ),

      ),
      appBar: AppBar(
        backgroundColor: Color(0xff3b6978),
        elevation: 0,
        centerTitle: true,
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
