import 'package:flutter/material.dart';
import 'package:flutter_101/page/button_page.dart';
import 'package:flutter_101/page/dialog_page.dart';
import 'package:flutter_101/page/expanded_page.dart';
import 'package:flutter_101/page/list_view_page.dart';
import 'package:flutter_101/page/page_view.dart';
import 'package:flutter_101/page/sheet_page.dart';
import 'package:flutter_101/page/stack_page.dart';
import 'package:flutter_101/page/stateful_page.dart';
import 'package:flutter_101/page/stateless_page.dart';
import 'package:flutter_101/page/wrap_page.dart';
import 'navigator_page.dart';

class MainPage extends StatelessWidget {
  static String routeName = "/main_page";

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, PageViewPage.routeName);
                  },
                  child: const Text("ViewPager")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ListViewPage.routeName);
                  },
                  child: const Text("RecyclerView")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ExpandedPage.routeName);
                  },
                  child: const Text("Expanded - Flex")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, WrapPage.routeName);
                  },
                  child: const Text("Wrap")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SheetPage.routeName);
                  },
                  child: const Text("Sheet")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, StackPage.routeName);
                  },
                  child: const Text("Stack")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, DialogPage.routeName);
                  },
                  child: const Text("Dialog")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ButtonPage.routeName);
                  },
                  child: const Text("Button")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, StatefulPage.routeName);
                  },
                  child: const Text("Stateful")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, StatelessPage.routeName);
                  },
                  child: const Text("Stateless")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NavigatorPage.routeName);
                  },
                  child: const Text("Navigator")),
            ],
          ),
        ),
      ),
    );
  }
}
