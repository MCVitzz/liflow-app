import 'package:flutter/material.dart';

import 'package:Liflow/objects/session.dart';

import './pages/home_page.dart';

void main() {
  Session session = Session();
  session.auth();
  runApp(Liflow());
}

class Liflow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Liflow',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 51, 51, 51),
      ),
      home: MyHomePage(title: 'Liflow'),
    );
  }
}
