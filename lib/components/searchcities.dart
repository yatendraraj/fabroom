import 'package:fabrooms/components/searchbar.dart';
import 'package:fabrooms/components/size_config.dart';
import 'package:fabrooms/screens/renttypeflatscreen.dart';
import 'package:fabrooms/screens/renttypehousescreen.dart';
import 'package:fabrooms/screens/renttypepgsscreen.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  final cities = [
    "mumbai",
    "pune",
    "delhi",
    "lucknow",
    "jhansi",
    "agra",
    "new delhi",
    "jaipur",
    "kanpur"
  ];
  final recentCities = [
    "delhi",
    "lucknow",
    "jhansi",
    "agra",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
            showSuggestions(context);
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          color: Colors.blue,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //all the flats and house of the that cities
    return Container(
      margin: EdgeInsets.all(10),
      width: getProportionateScreenWidth(400),
      height: getProportionateScreenHeight(800),
      decoration: BoxDecoration(
          color: Colors.blue[100], borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Text(
              "${query[0].toUpperCase()}${query.substring(1).toLowerCase()} ,",
              style: TextStyle(
                fontFamily: "Satisfy",
                fontSize: 50.0,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Text(
              "Please select the rent type,",
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Flats'),
                  onPressed: () {
                    Navigator.pushNamed(context, Renttypeflatscreen.id);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('House'),
                  onPressed: () {
                    Navigator.pushNamed(context, Renttypescreen.id);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text("PG's"),
                  onPressed: () {
                    Navigator.pushNamed(context, Renttypepgscreen.id);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(0),
              padding: EdgeInsets.all(5),
              height: getProportionateScreenHeight(490),
              width: getProportionateScreenWidth(380),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Searchcitiestype(
                      images: "images/hotel.jpg",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Searchcitiestype(images: "images/hotel.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Searchcitiestype(images: "images/hotel.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Searchcitiestype(images: "images/hotel.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Searchcitiestype(images: "images/hotel.jpg"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentCities
        : cities.where((p) => p.startsWith(query.toLowerCase())).toList();
    return suggestionList.isEmpty
        ? Center(
            child: Text(
              "Result Not Found",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontFamily: "Satisfy",
                  fontSize: 23.0,
                  color: Colors.red),
            ),
          )
        : ListView.builder(
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                //showResults(context);
              },
              leading: Icon(Icons.location_city),
              title: Text(suggestionList[index]),
            ),
            itemCount: suggestionList.length,
          );
  }
}
