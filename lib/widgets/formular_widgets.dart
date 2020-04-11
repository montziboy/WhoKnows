import 'package:flutter/material.dart';

import 'package:whoknowsapp/screens/auth/signup_screen.dart';
import 'package:whoknowsapp/constants/constants.dart';

Widget customAuthButton({
  String title,
  IconData icon,
  Color iconColor,
  Function onPressed,
}) {
  return Container(
    width: double.infinity,
    height: 50.0,
    margin: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 0.0),
    child: MaterialButton(
      color: AppConstants.backgroundColor2,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: iconColor,
            size: 18.0,
          ),
          SizedBox(width: 6.0),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
      onPressed: onPressed,
    ),
  );
}

Widget customSwitchListTile({
  String title,
  bool isChecked,
  Function onChanged,
}) {
  return Container(
    padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
    child: SwitchListTile(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
          color: Colors.white,
        ),
      ),
      value: isChecked,
      onChanged: onChanged,
      activeColor: Colors.white,
    ),
  );
}

Widget customCheckboxListTile({
  String title,
  bool isChecked,
  Function onChanged,
}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 0.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Checkbox(
          value: isChecked,
          tristate: false,
          onChanged: onChanged,
          activeColor: Colors.transparent,
          checkColor: Colors.lightGreenAccent,
          focusColor: Colors.white,
        ),
      ],
    ),
  );
}

Widget customTextField(String title,
    {bool isPassword = false,
    TextEditingController controller,
    Function validator}) {
  return Container(
    margin: EdgeInsets.fromLTRB(40.0, 25.0, 40.0, 0.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 12.0,
        ),
        TextFormField(
          validator: validator,
          obscureText: isPassword,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            fillColor: Color(0xfff3f3f4),
            filled: true,
          ),
          onChanged: (value) {},
        ),
      ],
    ),
  );
}

Widget registerLabel(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text(
        'Don\'t have an account yet?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15.0,
        ),
      ),
      SizedBox(width: 6.0),
      MaterialButton(
        onPressed: () {
          Navigator.pushNamed(context, SignupScreen.routeName);
        },
        child: Text(
          'REGISTER NOW',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      )
    ],
  );
}
