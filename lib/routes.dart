import 'package:flutter/material.dart';
import 'package:flutter_101/page/list_view_page.dart';
import 'package:flutter_101/page/main_page.dart';
import 'package:flutter_101/page/page_view.dart';
import 'package:flutter_101/page/widget_lifecycle.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => const MainPage(),
  ListViewPage.routeName: (context) => const ListViewPage(),
  PageViewPage.routeName: (context) => const PageViewPage(),
  LifeCyclePage.routeName: (context) => const LifeCyclePage()
};
