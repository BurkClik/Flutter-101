import 'package:flutter/material.dart';

import 'navigated_page.dart';

class NavigatorPage extends StatelessWidget {
  static String routeName = "/Navigator";

  const NavigatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) => InkWell(
              child: Text("Index of item $index"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavigatedPage(index: index)),
                );
              }),
          itemCount: 25,
        ),
      ),
    );
  }
}
