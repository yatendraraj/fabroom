import 'package:fabrooms/components/renttype.dart';
import 'package:fabrooms/components/size_config.dart';
import 'package:flutter/material.dart';
import 'Recomendedhotels.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Image.asset(
              "images/city_02.png",
              height: getProportionateScreenWidth(330),
              width: getProportionateScreenHeight(390),
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 220.0,
              left: 35.0,
              child: Container(
                width: getProportionateScreenWidth(340),
                height: getProportionateScreenHeight(60),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Color(0xFFFF0000),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search by location…",
                    hintStyle: TextStyle(
                      fontSize: getProportionateScreenWidth(20),
                      color: Color(0xFF464A7E),
                    ),
                    suffixIcon: Icon(Icons.search),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(30),
                      vertical: getProportionateScreenWidth(15),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        //rent type
        Container(
          padding: EdgeInsets.all(1),
          width: getProportionateScreenWidth(390),
          height: getProportionateScreenHeight(140),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Renttype(
                images: "images/flat.jpg",
                type: "Flat",
                press: () {
                  //to do
                },
              ),
              Renttype(
                images: "images/house.jpg",
                type: "House",
                press: () {
                  //to do
                },
              ),
              Renttype(
                images: "images/pg.jpg",
                type: "PG's",
                press: () {
                  //to do
                },
              ),
            ],
          ),
        ),
        //recomended
        Container(
          padding: EdgeInsets.only(left: 13, right: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Recomended",
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
              Text("See all"),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              Recomendedhotels(),
              Recomendedhotels(),
              Recomendedhotels(),
              Recomendedhotels(),
            ],
          ),
        )
      ],
    );
  }
}
