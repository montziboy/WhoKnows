import 'package:flutter/material.dart';
import 'file:///C:/Users/marcu/Desktop/Projekte/flutter/whoknows/whoknows_app/lib/screens/community/community_screen.dart';
import 'file:///C:/Users/marcu/Desktop/Projekte/flutter/whoknows/whoknows_app/lib/screens/dashboard/dashboard_screen.dart';
import 'file:///C:/Users/marcu/Desktop/Projekte/flutter/whoknows/whoknows_app/lib/screens/news/news_screen.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int navigationIndex = 0;

  final List<String> drawerPageNavigation = [
    'Dashboard',
    'News',
    'Community',
    'Dream Database',
    'Shop',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.blueGrey,
        width: MediaQuery.of(context).size.width * 2 / 3,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                '- Navigation -'.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: drawerPageNavigation.length,
                itemBuilder: (context, index) {
                  return MaterialButton(
                    onPressed: () {
                      setState(
                        () {
                          navigationIndex = index;
                          switch (navigationIndex) {
                            case 0:
                              Navigator.pushNamed(
                                  context, DashboardScreen.routeName);
                              break;
                            case 1:
                              Navigator.pushNamed(
                                  context, NewsScreen.routeName);
                              break;
                            case 2:
                              Navigator.pushNamed(
                                  context, CommunityScreen.routeName);
                              break;
                          }
                          print(
                              '${drawerPageNavigation[navigationIndex]} clicked!');
                        },
                      );
                    },
                    child: ListTile(
                      title: Text(
                        drawerPageNavigation[index],
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
