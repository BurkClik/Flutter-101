import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  static String routeName = "/Expanded";
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.red.shade900,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Option + return
