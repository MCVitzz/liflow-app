import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './pages/tabbed_page.dart';

void main() => runApp(Liflow());

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

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color:Colors.black),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: _getPage(index),
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.white,
        color: Colors.grey,
        items: [
          AppBarItem(iconData: FontAwesomeIcons.list, text: 'Lists'),
          AppBarItem(iconData: FontAwesomeIcons.moneyBill, text: 'Expenses'),
          AppBarItem(iconData: Icons.school, text: 'School'),
          AppBarItem(iconData: Icons.fitness_center, text: 'Weights'),
        ],
        notchedShape: CircularNotchedRectangle(),
        selectedColor: Colors.blue,
        onTabSelected: _selectedTab,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }

  void _selectedTab(int index) {
    setState(() {
      
    });
  }

  Widget _getPage() {

  }
}
