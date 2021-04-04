import 'package:flutter/material.dart';
import 'package:trackerconsole/components/navbar.dart';
import 'package:trackerconsole/enums.dart';

import 'modules/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: SizedBox(),
          title: Center(
            child: Text("Control Panel"),
          )),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
