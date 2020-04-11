import 'package:flutter/material.dart';

import 'package:whoknowsapp/widgets/graphical_widgets.dart';
import 'package:whoknowsapp/widgets/navigation_widgets.dart';

class ShopScreen extends StatefulWidget {
  static final routeName = '/shop_screen';

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(title: 'Shop'),
      drawer: CustomDrawer(),
      body: backgroundContainer(),
    );
  }
}
