import 'package:flutter/material.dart';

import 'package:whoknowsapp/widgets/graphical_widgets.dart';
import 'package:whoknowsapp/widgets/navigation_widgets.dart';

class CommunityScreen extends StatefulWidget {
  static final routeName = '/community_screen';

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Community'),
      drawer: CustomDrawer(),
      body: backgroundContainer(),
    );
  }
}
