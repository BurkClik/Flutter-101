import 'package:flutter/material.dart';
import 'package:flutter_101/page/button_page.dart';
import 'package:flutter_101/page/dialog_page.dart';
import 'package:flutter_101/page/draggable_sheet_page.dart';
import 'package:flutter_101/page/expanded_page.dart';
import 'package:flutter_101/page/list_view_page.dart';
import 'package:flutter_101/page/main_page.dart';
import 'package:flutter_101/page/navigator_page.dart';
import 'package:flutter_101/page/page_view.dart';
import 'package:flutter_101/page/sheet_page.dart';
import 'package:flutter_101/page/stack_page.dart';
import 'package:flutter_101/page/stateful_page.dart';
import 'package:flutter_101/page/stateless_page.dart';
import 'package:flutter_101/page/widget_lifecycle.dart';
import 'package:flutter_101/page/wrap_page.dart';

final Map<String, WidgetBuilder> routes = {
  MainPage.routeName: (context) => const MainPage(),
  ListViewPage.routeName: (context) => const ListViewPage(),
  PageViewPage.routeName: (context) => const PageViewPage(),
  LifeCyclePage.routeName: (context) => const LifeCyclePage(),
  ExpandedPage.routeName: (context) => const ExpandedPage(),
  WrapPage.routeName: (context) => const WrapPage(),
  SheetPage.routeName : (context) => const SheetPage(),
  DraggableSheetPage.routeName: (context) => const DraggableSheetPage(),
  StackPage.routeName: (context) => const StackPage(),
  DialogPage.routeName: (context) => const DialogPage(),
  ButtonPage.routeName: (context) => const ButtonPage(),
  StatelessPage.routeName: (context) => StatelessPage(),
  StatefulPage.routeName: (context) => StatefulPage(),
  NavigatorPage.routeName: (context) => const NavigatorPage()
};
