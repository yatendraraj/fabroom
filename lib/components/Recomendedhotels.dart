import 'package:fabrooms/components/size_config.dart';
import 'package:flutter/material.dart';

class Recomendedhotels extends StatelessWidget {
  const Recomendedhotels({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      width: getProportionateScreenWidth(400),
      height: getProportionateScreenHeight(300),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: getProportionateScreenWidth(380),
                height: getProportionateScreenHeight(180),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/hotel.jpg"),
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: getProportionateScreenWidth(380),
                height: getProportionateScreenHeight(100),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Hotel Anpurana",
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Satisfy",
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Near Gla university",
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: "Satisfy",
                      ),
                    ),
                    Text(
                      "Price: 2000",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
