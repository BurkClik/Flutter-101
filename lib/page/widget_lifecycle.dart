import 'dart:io';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  const LifeCyclePage({Key? key}) : super(key: key);

  static String routeName = "/lifecycle";

  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage>
    with WidgetsBindingObserver {
  late int _counter;

  @override
  void initState() {
    _counter = 0;
    super.initState();
    developer.log("Init state", name: "Log");
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void didUpdateWidget(covariant LifeCyclePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    developer.log("didUpdateWidget", name: "Log");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    developer.log("didChangeDependecies", name: "Log");
  }

  @override
  void deactivate() {
    super.deactivate();
    developer.log("deactive", name: "Log");
  }

  @override
  void dispose() {
    super.dispose();
    developer.log("dispose", name: "Log");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(child: Text(_counter.toString())),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
