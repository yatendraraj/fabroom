import 'package:fabrooms/components/Recomendedhotels.dart';

import 'package:flutter/material.dart';

class Renttypepgscreen extends StatefulWidget {
  static const String id = 'rent_pgs';
  Renttypepgscreen({Key key}) : super(key: key);

  @override
  _RenttypepgscreenState createState() => _RenttypepgscreenState();
}

class _RenttypepgscreenState extends State<Renttypepgscreen> {
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
                  "PG's",
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
                  images: "images/pg.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/pg.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/pg.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/pg.jpg",
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/pg.jpg",
                )
              ],
            ),
          ),
        ));
  }
}
