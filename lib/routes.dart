import 'package:flutter/widgets.dart';
import 'package:trackerconsole/screens/signin/signin.dart';
import 'package:trackerconsole/screens/splash/splash.dart';
import 'package:trackerconsole/screens/home/home.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
