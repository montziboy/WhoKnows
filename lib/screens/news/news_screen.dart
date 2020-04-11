import 'package:flutter/material.dart';

import 'package:whoknowsapp/widgets/graphical_widgets.dart';
import 'package:whoknowsapp/widgets/navigation_widgets.dart';

class NewsScreen extends StatefulWidget {
  static final routeName = '/news_screen';

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'News'),
      drawer: CustomDrawer(),
      body: backgroundContainer(),
    );
  }
}
