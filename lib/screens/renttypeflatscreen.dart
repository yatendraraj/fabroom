import 'package:fabrooms/components/Recomendedhotels.dart';

import 'package:flutter/material.dart';

class Renttypeflatscreen extends StatefulWidget {
  static const String id = 'rent_flat';
  Renttypeflatscreen({Key key}) : super(key: key);

  @override
  _RenttypeflatscreenState createState() => _RenttypeflatscreenState();
}

class _RenttypeflatscreenState extends State<Renttypeflatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[50],
        body: Container(
          padding: EdgeInsets.only(top: 30, left: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Flats",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "Satisfy",
                    fontSize: 40.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/flat.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/flat.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/flat.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/flat.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/flat.jpg",
                )
              ],
            ),
          ),
        ));
  }
}
