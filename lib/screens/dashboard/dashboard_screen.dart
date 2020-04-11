import 'package:flutter/material.dart';

import '../../widgets/graphical_widgets.dart';
import '../../widgets/navigation_widgets.dart';

class DashboardScreen extends StatefulWidget {
  static final routeName = '/dashboard_screen';
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Dashboard'),
      drawer: CustomDrawer(),
      body: backgroundContainer(),
    );
  }
}
