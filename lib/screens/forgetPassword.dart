import 'package:fabrooms/components/rounded_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../const.dart';

class Forgetpassword extends StatefulWidget {
  Forgetpassword({Key key}) : super(key: key);
  String email;

  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  String email;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          "Forget  Password",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: "Satisfy",
          ),
        ),
      ),
      body: SafeArea(
        child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 60.0, left: 10.0, right: 10.0),
                child: TextFormField(
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
              ),
              SizedBox(
                height: 20,
              ),
              RoundedButton(
                  color: Colors.blue,
                  title: "Submit",
                  onPressed: () {
                    if (_formkey.currentState.validate()) {
                      FirebaseAuth.instance
                          .sendPasswordResetEmail(email: email)
                          .then(
                            (value) => Fluttertoast.showToast(
                                msg: "Check your email now",
                                toastLength: Toast.LENGTH_LONG,
                                gravity: ToastGravity.TOP_LEFT,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.black38,
                                textColor: Colors.white,
                                fontSize: 18.0),
                          );
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
