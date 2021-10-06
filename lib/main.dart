import 'package:buget_app_ui/Screens/home_screen.dart';
import 'package:buget_app_ui/Screens/the_font_show_tester.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Budet App',
      theme: ThemeData(
          primaryColor: Colors.green[900],
//scaffoldBackgroundColor: Colors.green[100],
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Vazir'/* بجز مال اپ بار همه متن ها رو تغییر میده*/
//            decoration: TextDecoration.lineThrough,
//                bodyColor: Colors.white,/* رنگ همه متن ها رو تغییر میده*/
              )),
      home: Scaffold(
        body: HomeScreen(), //TheFontShowTester
      ),
      color: Colors.green,
    );
  }
}

