import 'package:flutter/material.dart';
import 'package:whoknowsapp/screens/dashboard_screen.dart';

import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          unselectedWidgetColor: Colors.white,
          errorColor: Colors.white,
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 15.0, color: Colors.white))),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        SignupScreen.routeName: (context) => SignupScreen(),
        DashboardScreen.routeName: (context) => DashboardScreen(),
      },
    );
  }
}
