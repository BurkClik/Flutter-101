import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  static String routeName = "/Stack";
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            height: 75,
            width: 75,
            color: Colors.cyan,
          ),
          Container(
            height: 50,
            width: 50,
            color: Colors.yellow,
          ),
          Container(
            height: 25,
            width: 25,
            color: Colors.red,
          ),
          const Align(
            alignment: Alignment.topRight,
            child: CircleAvatar(
              child: Text("ss"),
              backgroundColor: Colors.yellow,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(8))),
            ),
          )
        ],
      ),
    );
  }
}
