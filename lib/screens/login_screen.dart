import 'package:fabrooms/components/rounded_button.dart';
import 'package:fabrooms/const.dart';
import 'package:fabrooms/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSnipper = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.lightBlue[50],
      body: ModalProgressHUD(
        inAsyncCall: showSnipper,
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(5),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 0.0, right: 50, left: 0),
                    child: Text(
                      'Welcome Back ,',
                      style: kTextHeading,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 0, right: 180, left: 0),
                    child: Text(
                      'Log in to continue',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Satisfy',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Hero(
                    tag: 'logo',
                    child: Container(
                      width: 200.0,
                      height: 300.0,
                      margin: EdgeInsets.only(left: 30, top: 0),
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    validator: (value) {
                      if (value.length == 0)
                        return "Please enter Email";
                      else if (!value.contains('@'))
                        return "Enter a valid Email";
                      else
                        return null;
                    },
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your Email'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlign: TextAlign.center,
                    obscureText: true,
                    validator: (value) {
                      if (value.length == 0)
                        return "Please enter Password";
                      else
                        return null;
                    },
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: kTextFieldDecoration.copyWith(
                        hintText: 'Enter your Password'),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  RoundedButton(
                    color: Colors.lightBlueAccent,
                    title: 'Login',
                    onPressed: () async {
                      if (formkey.currentState.validate()) {
                        formkey.currentState.save();
                        setState(() {
                          showSnipper = true;
                        });

                        try {
                          final user = await _auth.signInWithEmailAndPassword(
                              email: email, password: password);
                          if (user != null) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
                          }
                          setState(() {
                            showSnipper = false;
                          });
                        } catch (e) {
                          Fluttertoast.showToast(
                              msg: e.message,
                              toastLength: Toast.LENGTH_LONG,
                              gravity: ToastGravity.BOTTOM,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.black38,
                              textColor: Colors.white,
                              fontSize: 16.0);
                          setState(() {
                            showSnipper = false;
                          });
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
