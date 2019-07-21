import 'package:flutter/material.dart';

import '../widgets/lists_view.dart';

class ListsPage extends StatelessWidget {

  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    return RotationTransition(
      turns: animation,
      child: ScaleTransition(
        scale: animation,
        child: FadeTransition(
          opacity: animation,
          child: ListsPage(),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListsView(
        lists: ['Hello', 'Salut', 'Olá', 'Hola'],
      ),
    );
  }
}
