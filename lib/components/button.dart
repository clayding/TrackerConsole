import 'package:flutter/material.dart';

import 'package:trackerconsole/constants.dart';
import 'package:trackerconsole/sizeconf.dart';

class EnterButton extends StatelessWidget {
  const EnterButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(512),
      height: getProportionateScreenHeight(32),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
        style: ElevatedButton.styleFrom(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0),
            ),
            primary: kPrimaryColor),
      ),
    );
  }
}
