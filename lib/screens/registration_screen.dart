import 'package:fabrooms/components/rounded_button.dart';
import 'package:fabrooms/const.dart';
import 'package:fabrooms/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  RegistrationScreen({Key key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  String email;
  final _auth = FirebaseAuth.instance;
  String password;
  String confrimpasssword;
  bool showSnipper = false;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      body: ModalProgressHUD(
        inAsyncCall: showSnipper,
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 0.0, right: 50, left: 10),
                      child: Text(
                        'Create account ,',
                        style: kTextHeading,
                      ),
                    ),
                    SizedBox(
                      height: 10,
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
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value.length == 0)
                          return "Please enter  Email";
                        else if (!value.contains("@"))
                          return "Please enter valid email";
                        else
                          return null;
                      },
                      onChanged: (value) {
                        email = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter your email'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      validator: (value) {
                        if (value.length == 0)
                          return "Please enter a Password";
                        else if (value.length < 6)
                          return "Your password should be more then 6 char long";
                        else
                          return null;
                      },
                      onChanged: (value) {
                        password = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter your password'),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      textAlign: TextAlign.center,
                      obscureText: true,
                      validator: (value) {
                        if (value.length == 0)
                          return "Please confirm a Password";
                        else if (value != password)
                          return "Password does not match";
                        else
                          return null;
                      },
                      onChanged: (value) {
                        confrimpasssword = value;
                      },
                      decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Confirm Passowrd'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RoundedButton(
                      color: Colors.blueAccent,
                      title: 'Signup',
                      onPressed: () async {
                        if (formkey.currentState.validate()) {
                          formkey.currentState.save();
                          setState(() {
                            showSnipper = true;
                          });

                          try {
                            final newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newUser != null) {
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
      ),
    );
  }
}
