import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  static String routeName = "/Wrap";
  const WrapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wrap"),),
      body: Wrap(
        alignment: WrapAlignment.center,
        spacing: 10,
        direction: Axis.horizontal,
        children: [
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
          Text("Trendyol"),
        ],
      ),
    );
  }
}
