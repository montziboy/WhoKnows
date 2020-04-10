import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:whoknowsapp/constants/constants.dart';

import '../widgets/formular_widgets.dart';
import '../widgets/graphical_widgets.dart';

class SignupScreen extends StatefulWidget {
  static final routeName = '/signup_screen';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();

  String email;
  String password;
  bool hasAcceptedEULA = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: customAppBar(context, title: 'Signup'),
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
                validator: MultiValidator([
                  RequiredValidator(
                    errorText: 'You need a name!',
                  ),
                  EmailValidator(
                      errorText: 'That does not appear to be an email!'),
                ]),
              ),
              // PASSWORD TEXT FIELD --
              customTextField(
                'Password',
                isPassword: true,
                controller: _passwordController,
                validator: MultiValidator([
                  RequiredValidator(errorText: 'You need a password!'),
                  MinLengthValidator(6,
                      errorText:
                          'Password must be at least 6 characters long!'),
                ]),
              ),
              // REPEAT PASSWORD TEXT FIELD --
              customTextField(
                'Repeat Password',
                isPassword: true,
                controller: _repeatPasswordController,
                validator: (value) =>
                    MatchValidator(errorText: 'Passwords are not matching')
                        .validateMatch(value, password),
              ),
              customCheckboxListTile(
                title: 'I have read and accepted the EULA!',
                isChecked: hasAcceptedEULA,
                onChanged: (bool value) {
                  setState(
                    () {
                      hasAcceptedEULA = value;
                    },
                  );
                },
              ),

              // EULA BUTTON --
              customAuthButton(
                title: 'EULA',
                icon: Icons.description,
                iconColor: Colors.white,
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return ListView.builder(
                        itemCount: AppConstants.eula.length,
                        addSemanticIndexes: true,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(
                                15.0, 15.0, 15.0, 0.0),
                            child: Text(AppConstants.eula[index]),
                          );
                        },
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 8.0),
              // SIGNUP BUTTON --
              customAuthButton(
                title: 'Signup',
                icon: Icons.assignment,
                iconColor: Colors.lightGreenAccent,
                onPressed: () {
                  setState(
                    () {
                      _formKey.currentState.validate();
                      print('$email: $password');
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
