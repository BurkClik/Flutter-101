import 'package:flutter/material.dart';

class NavigatedPage extends StatelessWidget {
  final int index;

  const NavigatedPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$index"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back"))
              ],
            ),
          ),
        ),
    );
  }
}
