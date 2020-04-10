import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:whoknowsapp/widgets/graphical_widgets.dart';

import '../widgets/graphical_widgets.dart';
import '../screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, LoginScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: backgroundContainer(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 500.0,
                child: FlareActor(
                  'assets/animations/mask_logo.flr',
                  animation: 'fade',
                ),
              ),
              Container(
                height: 80.0,
                width: 80.0,
                child: FlareActor(
                  'assets/animations/loading.flr',
                  animation: 'Untitled',
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
