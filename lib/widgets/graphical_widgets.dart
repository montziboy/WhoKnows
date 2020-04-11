import 'package:flutter/material.dart';

import 'package:whoknowsapp/constants/constants.dart';

// APPBAR WHEN LOGGED IN
Widget customAppBar({String title}) {
  return AppBar(
    backgroundColor: AppConstants.backgroundColor1,
    title: Text(title),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.settings,
          color: Colors.white,
        ),
      )
    ],
  );
}

// APPBAR WHEN NOT LOGGED IN
Widget customAuthAppBar(
  BuildContext context, {
  String title,
}) {
  return AppBar(
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.help),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            enableDrag: false,
            builder: (context) {
              return Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'To be able to be part of the WhoKnows-Community, we need you to have an account here.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'You only need an email adress. Thats it!',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'If you already have an account, please log in with your login details.',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              );
            },
          );
        },
      )
    ],
    backgroundColor: AppConstants.backgroundColor1,
    title: Text(title),
  );
}

Widget backgroundContainer({Widget child}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          AppConstants.backgroundColor2,
          AppConstants.backgroundColor1,
        ],
      ),
    ),
    child: child,
  );
}

Widget customDivider() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 0.0),
    child: Divider(
      indent: 25.0,
      endIndent: 25.0,
      color: Colors.white,
      thickness: 2.0,
    ),
  );
}
