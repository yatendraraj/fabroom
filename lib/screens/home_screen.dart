import 'package:fabrooms/components/body.dart';
import 'package:fabrooms/const.dart';
import 'package:fabrooms/screens/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:fabrooms/components/navigation_bar.dart';
import 'package:fabrooms/screens/call_page.dart';
import 'package:fabrooms/screens/contact_page.dart';
import 'package:fabrooms/screens/filter_page.dart';
import 'package:fabrooms/screens/logout_page.dart';
import 'package:fabrooms/screens/location_page.dart';
import 'package:fabrooms/screens/notification_page.dart';
import 'package:fabrooms/screens/version_page.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void profileImage()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }
  void profileChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }
  void notificationChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Notifications()),
    );
  }

  void filterChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Filter()),
    );
  }

  void logoutChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Logout()),
    );
  }

  void locationChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Location()),
    );
  }

  void contactChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Contact()),
    );
  }
  void callChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Call()),
    );
  }
  void versionChange()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Version()),
    );
  }
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
            CustomListTile(icon: Icons.person,text: 'Profile',onTap: () {
              profileChange();
            } ,),
            // CustomListTile(icon: Icons.notifications,text: 'Notification',onTap: () {
            //   notificationChange();
            // },),
            CustomListTile(icon: Icons.filter_alt_outlined,text: 'Filter',onTap: () {
              filterChange();
            },),

            CustomListTile(icon: Icons.location_on_outlined,text: 'Know Your Location',onTap: () {
              locationChange();
            },),
            CustomListTile(icon: Icons.mail,text: 'Contact Us',onTap: () {
              contactChange();
            },),
            CustomListTile(icon: Icons.phone,text: 'Call Us',onTap: () {
              callChange();
            },),
            CustomListTile(icon: Icons.logout,text: 'Log out',onTap: () {
              logoutChange();
            },),
            CustomListTile(icon: Icons.domain_verification_sharp,text: 'version 1.0',onTap:() {
              versionChange();
            }),
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
            onPressed:() {
              profileImage();
              },
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
