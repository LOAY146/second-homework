import 'dart:developer';

import 'login.dart';
import 'main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Drawer(
          // backgroundColor: Colors.black,
          width: MediaQuery.of(context).size.width / 2,
          child: Column(
            children: [
              DrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Colors.amber),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("images/a.jpg"),
                      radius: 50,
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                    ),
                    SizedBox(height: 2),
                    Expanded(child: Text("aaaaaaaaaaaa.com"))
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(top: 0),
                  children: [
                    buildListTile(context, "Home", Icon(Icons.home), MyHome()),
                    buildListTile(context, "Login", Icon(Icons.login),
                        Login(name: "Ahmed")),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                    buildListTile(context, "Login", Icon(Icons.login), Login()),
                  
                  ],
                ),
              )
            ],
          )),
    );
  }

  Padding buildListTile(BuildContext context, String title, icon, page) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2.0),
      child: ListTile(
        title: Text(title),
        tileColor: Colors.teal,
        leading: icon,
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => page),
            (route) => false,
          );
        },
      ),
    );
  }
}
