import 'package:flutter/material.dart';
import 'package:flutter_101/page/list_view_page.dart';
import 'package:flutter_101/page/page_view.dart';
import 'package:flutter_101/page/widget_lifecycle.dart';

class MainPage extends StatelessWidget {
  static String routeName = "/main_page";

  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 64.0),
            child: Column(
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
                      Navigator.pushNamed(context, LifeCyclePage.routeName);
                    },
                    child: const Text("Widget LifeCycles")),
                ElevatedButton(
                    onPressed: () {}, child: const Text("Expanded - Flex")),
                ElevatedButton(onPressed: () {}, child: const Text("Wrap")),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text("DraggableScrollableSheet")),
                ElevatedButton(onPressed: () {}, child: const Text("Stack")),
                ElevatedButton(
                    onPressed: () {},
                    child: const Text("AboutDialog - AlertDialog")),
                ElevatedButton(onPressed: () {}, child: const Text("Button")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
