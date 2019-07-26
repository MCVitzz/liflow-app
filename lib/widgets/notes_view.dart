import 'package:flutter/material.dart';

class NotesView extends StatelessWidget {
  final List<String> notes;

  NotesView({this.notes});

  Widget build(BuildContext context) {
    return Container(
        child: RefreshIndicator(
            onRefresh: _doTheRefresh,
            child: Scaffold(
              body: ListView(
              padding: const EdgeInsets.all(8.0),
              children: notes
                  .map((name) => ListTile(
                        title: Text(name),
                        subtitle: Text('Ganda cena'),
                      ))
                  .toList(),
            ))));
  }

  Future<void> _doTheRefresh() async {
    print('Thicc refresh');
  }
}
