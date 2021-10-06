import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceElevated: true,
            pinned: true,
//            floating: true,
            expandedHeight:100,
            leading: IconButton(
              icon: Icon(
                Icons.settings,
                /*TODO: not said color white */
                size: 30,
              ),
              onPressed: () {},
            ),
            flexibleSpace: FlexibleSpaceBar(
              title: Text('سلام بر شما '),
//              background: Stack(
//                children: <Widget>[
//                  Container(
//                    decoration: BoxDecoration(
//                      image: DecorationImage(
//                        image: AssetImage('assets/images/burger.jpg'),
//                        fit: BoxFit.cover,
//                      ),
//
//                    ),
//                  ),
//                  Container(
//                    decoration: BoxDecoration(
//                      gradient: LinearGradient(
//                        begin: Alignment.bottomCenter,
//                          end: Alignment.topCenter,
//                          colors: [Colors.black.withOpacity(0.7),Colors.black.withOpacity(0)]
//                      ),
//
//                    ),
//                  )
//                ],
//              )
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.add,
                  /*TODO: not said color white */
                  size: 30,
                ),
                onPressed: () {},
              )
            ],
          ),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int idx) {
              return
//                Card(elevation: 2,
//              child: Center(child: Column(
//                children: <Widget>[
//                  Text('hello'),
//                ],
//              )),);
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: idx == 0 ? 300 : 100,
                    color: idx == 0 ? Colors.red : Colors.green,
                  ),
                );
            }, childCount: 13),
          ),
        ],
      ),
    );
  }
}
