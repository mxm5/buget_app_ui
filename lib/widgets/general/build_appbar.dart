import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      'مدير هزينه ها ',
      style: TextStyle(fontFamily: 'Aqlaam_Regular'),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {},
      )
    ],
  );
}
