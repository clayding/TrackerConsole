import 'package:flutter/material.dart';

import 'package:trackerconsole/sizeconf.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: new Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    color: Color(0xFFFF0000),
                    child: Text(
                      "Text1",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    color: Color(0xFFFF0000),
                    child: Text(
                      "Text2",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
                ]),
          ),
          Expanded(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    color: Color(0xFFFF0000),
                    child: Text(
                      "Text3",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    color: Color(0xFFFF0000),
                    child: Text(
                      "Text4",
                      style: TextStyle(fontSize: 30.0),
                    ),
                  )),
                ]),
          ),
        ],
      ),
    ));
  }
}
