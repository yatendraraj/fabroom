import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:fabrooms/components/size_config.dart';
import 'package:fabrooms/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/splash_background.webp"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    margin: EdgeInsets.only(left: 30.0),
                    color: Colors.white,
                    width: 100.0,
                    height: 100.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                TyperAnimatedTextKit(
                  text: ['Fabrooms'],
                  textStyle: TextStyle(
                    color: Color(0xff0169c9),
                    fontSize: 50.0,
                    fontFamily: 'Satisfy',
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                  pause: Duration(milliseconds: 3000),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
