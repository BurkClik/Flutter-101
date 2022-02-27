import 'package:flutter/material.dart';

class StatefulPage extends StatefulWidget {
  static String routeName = "/Stateful";

  StatefulPage({Key? key}) : super(key: key);
  int counter = 0;

  @override
  _StatefulPageState createState() => _StatefulPageState();
}

class _StatefulPageState extends State<StatefulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful"),
      ),
      body: Center(
        child: Text("Counter ${widget.counter}"),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            widget.counter++;
          });
        },
      ),
    );
  }
}
