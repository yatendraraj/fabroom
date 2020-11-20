import 'package:fabrooms/components/size_config.dart';
import 'package:flutter/material.dart';

class Searchcitiestype extends StatelessWidget {
  const Searchcitiestype({
    Key key,
    this.images,
  }) : super(key: key);

  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      height: getProportionateScreenHeight(140),
      width: getProportionateScreenWidth(380),
      decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),
          ]),
      child: Row(
        children: [
          Container(
            height: getProportionateScreenHeight(140),
            width: getProportionateScreenWidth(140),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(images),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(
                "hotel name",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Satisfy",
                  fontSize: 40,
                ),
              ),
              Text(
                "hotel loation",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: Colors.black54, fontFamily: "Satisfy", fontSize: 25),
              ),
              Text(
                "hotel price",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
