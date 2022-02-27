import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  static String routeName = "/Button";
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(onPressed: () {}, child: Text("Text Button")),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              color: Colors.red,
              splashColor: Colors.blue),
          ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
          FloatingActionButton(
            backgroundColor: Colors.red,
            elevation: 10,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 2.0, color: Colors.orange),
              ),
              onLongPress: () {},
              onPressed: () {},
              child: const Text("Outlined Button"))
        ],
      ),
    );
  }
}
