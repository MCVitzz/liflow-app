import 'package:flutter/material.dart';

import './weights_page.dart';
import './notes_page.dart';
import './expenses_page.dart';

class PageManager {
  static List<Widget> getPages() {
    return <Widget>[
    NotesPage(),
      ExpensesPage(),
      Container(
          child: Center(
        child: Text('School!!'),
      )),
      WeightsPage()
    ];
  }

  static Widget getPage(int index) {
    print('-$index');
    switch (index) {
      case 0:
        return NotesPage();
        break;
      case 1:
        return ExpensesPage();
        break;
      case 2:
        return Container(
            child: Center(
          child: Text('School!!'),
        ));
        break;
      case 3:
        return WeightsPage();
        break;
      default:
        return Container();
        break;
    }
  }

  static void doAction(int index, BuildContext context) {
    switch (index) {
      case 0:
        NotesPage.action(context);
        break;
      case 1:
        ExpensesPage.action();
        break;
      case 2:
        print('FAB 2');
        break;
      case 3:
        WeightsPage.action();
        break;
    }
  }
}
