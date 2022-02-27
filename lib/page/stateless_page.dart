import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  static String routeName = "/Stateless";
  int counter = 0;

  StatelessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      body: Center(
        child: Text("Counter $counter"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          counter++;
        },
      ),
    );
  }
}
