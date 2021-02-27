import 'package:agenda/layout/contact_info.dart';
import 'package:agenda/layout/contact_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return MaterialApp(
        theme: ThemeData(brightness: Brightness.light),
        initialRoute: '/home',
        routes: {
          '/home': (context) => ContactList(),
          '/create': (context) => ContactInfo(),
        },
      );
    });
  }
}