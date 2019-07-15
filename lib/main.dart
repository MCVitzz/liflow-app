import 'package:flutter/material.dart';

import './pages/tabbed_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
      body: Container(),
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: Colors.white,
        centerItemText: 'Test',
        color: Colors.grey,
        items: [
          AppBarItem(iconData: Icons.menu, text: 'This'),
          AppBarItem(iconData: Icons.layers, text: 'Is'),
          AppBarItem(iconData: Icons.dashboard, text: 'Bottom'),
          AppBarItem(iconData: Icons.info, text: 'Bar'),
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
}
