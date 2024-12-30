import 'drawer.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({this.name = ""});
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login:"+name),
      ),
      drawer: MyDrawer(),
    );
  }
}
