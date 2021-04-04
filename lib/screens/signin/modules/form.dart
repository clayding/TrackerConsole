import 'package:flutter/material.dart';

import 'package:trackerconsole/constants.dart';
import 'package:trackerconsole/sizeconf.dart';
import 'package:trackerconsole/screens/home/home.dart';
import 'package:trackerconsole/components/surfixic.dart';
import 'package:trackerconsole/components/button.dart';
import 'package:trackerconsole/components/keyboard.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  String email;
  String password;
  bool remember = false;
  final _formKey = GlobalKey<FormState>();

  void addError({String error}) {}

  void removeError({String error}) {}

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(children: [
      buildEmailFormField(),
      SizedBox(height: getProportionateScreenHeight(30)),
      buildPasswordFormField(),
      SizedBox(height: getProportionateScreenHeight(5)),
      Row(
        children: [
          Checkbox(
            //CheckBox's border color comes from unselectedWidgetColor
            //of ThemeData.
            value: remember,
            activeColor: kPrimaryColor,
            onChanged: (value) {
              setState(() {
                remember = value;
              });
            },
          ),
          Text("Remember me"),
          Spacer(),
        ],
      ),
      SizedBox(height: getProportionateScreenHeight(20)),
      EnterButton(
        text: "Login",
        press: () {
          /*if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
            // if all are valid then go to success screen
            KeyboardUtil.hideKeyboard(context);
            Navigator.pushNamed(context, LoginSuccessScreen.routeName);
          }*/
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
      ),
    ]));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      style: hintStyleConst,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email address",
        hintStyle: hintStyleConst,
        labelStyle: labelStyleConst,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      style: hintStyleConst,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        hintStyle: hintStyleConst,
        labelStyle: labelStyleConst,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }
}
