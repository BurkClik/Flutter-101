import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key? key}) : super(key: key);
  static String routeName = "/pageView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              physics: const ClampingScrollPhysics(),
              children: [
                Container(
                  color: Colors.red,
                  child: const Center(child: Text("Horizontal Red")),
                ),
                Container(
                  color: Colors.green,
                  child: const Center(child: Text("Horizontal Green")),
                ),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Colors.orange,
                  child: const Center(child: Text("Vertical Orange")),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(child: Text("Vertical Blue")),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
