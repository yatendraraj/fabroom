import 'package:fabrooms/components/Recomendedhotels.dart';
import 'package:fabrooms/components/details.dart';

import 'package:flutter/material.dart';

class Renttypescreen extends StatefulWidget {
  static const String id = 'rent_screen';
  Renttypescreen({Key key}) : super(key: key);

  @override
  _RenttypescreenState createState() => _RenttypescreenState();
}

class _RenttypescreenState extends State<Renttypescreen> {
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
                  "House's",
                  textDirection: TextDirection.ltr,
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
                  images: "images/house.jpg",
                  press: () {
                    Navigator.pushNamed(context, HotelDetailsPage.id);
                  },
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/house.jpg",
                  press: () {
                    Navigator.pushNamed(context, HotelDetailsPage.id);
                  },
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/house.jpg",
                  press: () {
                    Navigator.pushNamed(context, HotelDetailsPage.id);
                  },
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/house.jpg",
                  press: () {
                    Navigator.pushNamed(context, HotelDetailsPage.id);
                  },
                ),
                Recomendedhotels(
                  title: "Hotel Anpurana",
                  address: "Near Gla university",
                  price: "2000",
                  images: "images/house.jpg",
                  press: () {
                    Navigator.pushNamed(context, HotelDetailsPage.id);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
