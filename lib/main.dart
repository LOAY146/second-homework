import 'package:flutter/material.dart';
import 'drawer.dart';

void main() {
  runApp(MyHome());
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(),
          drawer: MyDrawer(),
          bottomNavigationBar: Container(
            color: Colors.amber,
            height: 50,
          ),
        ),
      ),
    );
  }
}
