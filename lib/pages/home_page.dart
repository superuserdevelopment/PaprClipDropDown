import 'package:flutter/material.dart';
import 'package:paperclip_dropdown/elements/drop_down.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PaprClip",
          style: TextStyle(fontFamily: "Circular", fontSize: 24.0),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Card(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              child: InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return DropDown();
                      });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Select a Parameter",
                      style: TextStyle(fontSize: 24.0, fontFamily: "Circular"),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      size: 30.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
