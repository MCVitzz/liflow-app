import 'package:flutter/material.dart';

import '../widgets/lists_view.dart';

class ListsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListsView(
        lists: ['Hello', 'Salut', 'Olá', 'Hola'],
      ),
    );
  }
}
