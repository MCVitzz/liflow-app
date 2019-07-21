import 'package:flutter/material.dart';

class ListsView extends StatelessWidget {
  final List<String> lists;

  ListsView({this.lists});

  Widget build(BuildContext context) {
    return Container(
        color: Colors.yellow,
        child: RefreshIndicator(
            onRefresh: _doTheRefresh,
            child: Scaffold(
              body: ListView(
              padding: const EdgeInsets.all(8.0),
              children: lists
                  .map((name) => ListTile(
                        leading: getIcon(Icons.accessible, Colors.amber),
                        title: Text(name),
                        subtitle: Text('Ganda cena'),
                      ))
                  .toList(),
            ))));
  }

  IconTheme getIcon(IconData icon, Color color) {
    return IconTheme(
      data: IconThemeData(color: color),
      child: Icon(icon),
    );
  }

  Future<void> _doTheRefresh() async {
    print('Thicc refresh');
  }
}
