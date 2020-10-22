import 'package:flutter/material.dart';

class Renttype extends StatefulWidget {
  const Renttype({
    Key key,
    this.images,
    this.type,
    this.press,
  }) : super(key: key);

  final String images, type;
  final Function press;

  @override
  _RenttypeState createState() => _RenttypeState();
}

class _RenttypeState extends State<Renttype> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.press,
      child: Column(
        children: <Widget>[
          Container(
            width: 100,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(widget.images),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            "${widget.type}",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 15,
              fontFamily: "Satisfy",
            ),
          )
        ],
      ),
    );
  }
}
