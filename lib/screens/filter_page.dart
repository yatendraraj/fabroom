import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fabrooms/screens/renttypeflatscreen.dart';
import 'package:fabrooms/screens/renttypehousescreen.dart';
import 'package:fabrooms/screens/renttypepgsscreen.dart';

class Filter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FilterPage(),
    );
  }
}
class FilterPage extends StatefulWidget {
  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int selectedRadio;
  int selectedRadioTile;

  @override
  void initState() {
    super.initState();
    selectedRadio=0;
    selectedRadioTile=0;
  }

  setSelectedRadio(int val)
  {
    setState(() {
      selectedRadio = val;
    });
  }

  setSelectedRadioTile(int val)
  {
    setState(() {
      selectedRadioTile = val;
    });
  }
  void flatScreen()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Renttypeflatscreen()),
    );
  }
  void pgScreen()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Renttypepgscreen()),
    );
  }
  void houseScreen()
  {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Renttypescreen()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Filter It Out!'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: 1,  //if value and groupValue is same so radio button is selected
              groupValue: selectedRadioTile, //if value and groupValue is same so radio button is selected
              title: Text(
                "Flats",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text("Search flat near you!!"),
              onChanged: (val)
              {
                print("Radio selected $val"); //if value and groupValue is same so radio button is selected.
                setSelectedRadioTile(val);
              },
              activeColor: Colors.green,
              secondary: OutlineButton(
                child: Text("Search"),
                onPressed: (){
                  //print("say hi");
                  flatScreen();
                },
              ),
            ),
          ),

          Divider(
            height: 20,
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: 2,  //if value and groupValue is same so radio button is selected
              groupValue: selectedRadioTile, //if value and groupValue is same so radio button is selected
              title: Text(
                "PG's",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text("Search PG's near you!!"),
              onChanged: (val)
              {
                print("Radio selected $val"); //if value and groupValue is same so radio button is selected.
                setSelectedRadioTile(val);
              },
              activeColor: Colors.green,
              secondary: OutlineButton(
                child: Text("Search"),
                onPressed: (){
                    pgScreen();
                  // print("say hi");
                },
              ),
            ),
          ),

          Divider(
            height: 20,
            color: Colors.green,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RadioListTile(
              value: 3,  //if value and groupValue is same so radio button is selected
              groupValue: selectedRadioTile, //if value and groupValue is same so radio button is selected
              title: Text(
                "Rooms",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              subtitle: Text("Search Rooms near you!!"),
              onChanged: (val)
              {
                print("Radio selected $val"); //if value and groupValue is same so radio button is selected.
                setSelectedRadioTile(val);
              },
              activeColor: Colors.green,
              secondary: OutlineButton(
                child: Text("Search"),
                onPressed: (){
                    houseScreen();
                  // print("say hi");
                },
              ),
            ),
          ),
          Divider(
            height: 20,
            color: Colors.green,
          ),
          // ButtonBar(
          //   alignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Radio(
          // value:  1,
          // groupValue: selectedRadio, //groupValue 0 so unselected 1 means selected..
          // activeColor: Colors.green,
          // onChanged: (val)   //val mai value aajayegi means 1..
          //   {
          //     print("Radio $val");
          //     setSelectedRadio(val);
          //     },
          //     ),
          //     Radio(
          //       value:  2,
          //       groupValue: selectedRadio,
          //       activeColor: Colors.green,
          //       onChanged: (val)
          //       {
          //         print("Radio $val");
          //         setSelectedRadio(val);
          //       },
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}

