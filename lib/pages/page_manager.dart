import 'package:flutter/material.dart';

import './weights_page.dart';
import './lists_page.dart';
import './expenses_page.dart';

class PageManager {
  static Widget getPage(int index) {
    switch (index) {
      case 0:
        return WeightsPage();
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
}
