import 'package:flutter/material.dart';

import 'package:whoknowsapp/widgets/graphical_widgets.dart';
import 'package:whoknowsapp/widgets/navigation_widgets.dart';

class DreamDatabaseScreen extends StatefulWidget {
  static final routeName = '/dream_database_screen';

  @override
  _DreamDatabaseScreenState createState() => _DreamDatabaseScreenState();
}

class _DreamDatabaseScreenState extends State<DreamDatabaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Dream Database'),
      drawer: CustomDrawer(),
      body: backgroundContainer(),
    );
  }
}
