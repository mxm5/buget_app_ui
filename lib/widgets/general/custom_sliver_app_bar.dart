import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      forceElevated: true,
      pinned: true,
//            floating: true,
      expandedHeight: 100,
      leading: IconButton(
        icon: Icon(
          Icons.settings,
          /* TODO: not said color white
          *   okay  */
          size: 30,
        ),
        onPressed: () {},
      ),
      flexibleSpace: FlexibleSpaceBar(
        /* TODO: REAL make some fonts replace ی w ي */
        title: Text(
          'مدير هزينه ها ',
          style: TextStyle(fontFamily: 'Aqlaam_Regular'),
        ),
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
}
