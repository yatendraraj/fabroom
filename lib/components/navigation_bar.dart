import 'package:flutter/material.dart';
import 'package:fabrooms/screens/home_screen.dart';
// ignore: must_be_immutable
class CustomListTile extends StatelessWidget
{
  IconData icon; //or IconData
  String text;
  Function onTap;

  CustomListTile({this.icon,this.text,this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(8.0,0.0,8.0,0.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.shade400))
        ),
        child: InkWell(
          //inkwell widget provided by flutter sdk for featuring ok double tap and hover effect vagera customizable butoon samjo isse.x
          splashColor: Colors.deepOrange,
          onTap: onTap,
          child: Container(
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                    children: <Widget>[
                      Icon(icon),
                      Padding(
                        padding:EdgeInsets.all(9.0),
                        child: Text(text,style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                    ]),
                Icon(Icons.arrow_right),
              ],
            ),
          ),

        ),
      ),
    );

  }

}