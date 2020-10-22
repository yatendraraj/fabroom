import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const kTextHeading = TextStyle(
  color: Colors.blueAccent,
  fontFamily: 'Satisfy',
  fontWeight: FontWeight.bold,
  fontSize: 50.0,
);
const kIconcolour = Colors.lightBlue;

const kRenttype = TextStyle(
  color: Colors.black12,
  fontSize: 20,
  fontFamily: "Satisfy",
);

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter your email',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);
