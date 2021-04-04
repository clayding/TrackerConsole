import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trackerconsole/sizeconf.dart';

/* About flutter_svg.dart
  Visit https://pub.dev/packages/flutter_svg
  Use this package as a library:
  1. Depend on it
      Add this to your package's pubspec.yaml file:
      ____________________________
      | dependencies:            |
      | flutter_svg: ^0.19.3     |
      ----------------------------
  2. Install it
      You can install packages from the command line:

      with Flutter:
      $ flutter pub get

      Alternatively, your editor might support flutter pub get. 
      Check the docs for your editor to learn more.
  3. Import it
      Now in your Dart code, you can use:

      import 'package:flutter_svg/flutter_svg.dart';
*/

class CustomSurffixIcon extends StatelessWidget {
  const CustomSurffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(18),
      ),
    );
  }
}
