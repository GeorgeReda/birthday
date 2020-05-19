import 'package:flutter/material.dart';
import 'package:melika/people.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.blue,
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text("Happy Birthday Melika",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    )),
                background: Center(
                  // TODO: Replace with a photo
                  child: Container(
                    padding: EdgeInsets.all(50),
                    child: Text('All Of Us Wish You A Happy Bithday',
                        style: TextStyle(
                          color: Colors.lightGreenAccent,
                          fontSize: 32.0,
                        )),
                  ),
                ),
              ),
            ),
          ];
        },
        // list of people
        body: People(),
      ),
    );
  }
}
