import 'package:flutter/material.dart';
import 'file:///C:/Users/marcu/Desktop/Projekte/flutter/whoknows/whoknows_app/lib/screens/community/community_screen.dart';
import 'file:///C:/Users/marcu/Desktop/Projekte/flutter/whoknows/whoknows_app/lib/screens/dashboard/dashboard_screen.dart';

import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/auth/splash_screen.dart';
import 'screens/news/news_screen.dart';

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
        NewsScreen.routeName: (context) => NewsScreen(),
        CommunityScreen.routeName: (context) => CommunityScreen(),
      },
    );
  }
}
