import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Theme.of(context).primaryColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 0;
                });
              },
              splashColor: Colors.blue,
              child: DropDownElements("Overview", currentSelection == 0),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 1;
                });
              },
              splashColor: Colors.blue,
              child:
                  DropDownElements("Latest Stock Price", currentSelection == 1),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 2;
                });
              },
              splashColor: Colors.blue,
              child:
                  DropDownElements("Dividents-Yeilds", currentSelection == 2),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 3;
                });
              },
              splashColor: Colors.blue,
              child: DropDownElements("Performance", currentSelection == 3),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 4;
                });
              },
              splashColor: Colors.blue,
              child: DropDownElements("Fundamental", currentSelection == 4),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 5;
                });
              },
              splashColor: Colors.blue,
              child: DropDownElements("Finance", currentSelection == 5),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  currentSelection = 6;
                });
              },
              splashColor: Colors.blue,
              child: DropDownElements("Profile", currentSelection == 6),
            ),
          ],
        ),
      ),
    );
  }
}

Widget DropDownElements(String title, bool val) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 5.0),
    child: Card(
      elevation: val? 20.0: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 24.0, fontFamily: "Circular"),
            ),
            Checkbox(
              onChanged: (bool val) {},
              value: val,
              checkColor: Colors.white,
              focusColor: Colors.white,
            )
          ],
        ),
      ),
    ),
  );
}
