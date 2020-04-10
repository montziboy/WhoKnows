import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whoknowsapp/screens/dashboard_screen.dart';

import '../widgets/formular_widgets.dart';
import '../widgets/graphical_widgets.dart';

class LoginScreen extends StatefulWidget {
  static final routeName = '/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String email;
  String password;
  bool rememberIsChecked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: customAppBar(context, title: 'Login'),
      body: backgroundContainer(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // EMAIL TEXT FIELD --
              customTextField(
                'Email',
                isPassword: false,
                controller: _emailController,
              ),
              // PASSWORD TEXT FIELD --
              customTextField(
                'Password',
                isPassword: true,
                controller: _passwordController,
              ),
              customSwitchListTile(
                title: 'Stay logged in',
                isChecked: false,
                onChanged: (value) {
                  setState(
                    () {
                      rememberIsChecked = value;
                    },
                  );
                },
              ),
              // LOGIN BUTTON --
              customAuthButton(
                title: 'Login',
                icon: Icons.lock,
                iconColor: Colors.white,
                onPressed: () {
                  setState(
                    () {
                      email = _emailController.text.toString();
                      password = _passwordController.text.toString();
                      print('$email: $password');
                      Navigator.popAndPushNamed(
                          context, DashboardScreen.routeName);
                    },
                  );
                },
              ),
              // DIVIDER
              customDivider(),
              // NO ACCOUNT YET? REGISTER!
              registerLabel(context),
            ],
          ),
        ),
      ),
    );
  }
}
