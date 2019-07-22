import 'package:Liflow/pages/page_manager.dart';
import 'package:flutter/material.dart';

import './page_routes.dart';

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.index});
  final GlobalKey<NavigatorState> navigatorKey;
  final int index;

  void push(BuildContext context, int index) {
    Navigator.push(
        context, PageRouting(builder: (context) => PageManager.getPage(index)));
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
        key: navigatorKey,
        onGenerateRoute: (routeSettings) {
          return PageRouting(builder: (context) => PageManager.getPage(index));
        });
  }
}
