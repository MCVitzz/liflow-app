import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './page_manager.dart';
import './tabbed_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.list), title: Text('Lists')),
    BottomNavigationBarItem(
        icon: Icon(FontAwesomeIcons.moneyBill), title: Text('Expenses')),
    BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
    BottomNavigationBarItem(
        icon: Icon(Icons.fitness_center), title: Text('Weights')),
  ];

  int _idx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
      ),
      body: _buildBody(_idx),
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
        onPressed: () => PageManager.doAction(_idx, context),
      ),
    );
  }

  void _selectedTab(int index) {
    setState(() {
      _idx = index;
    });
  }

  Widget _buildBody(int index) {
    return Builder(builder: (context) => _getW(index));
  }

  Widget _getW(int index) {
    return PageManager.getPage(index);
  }
}