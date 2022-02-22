import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("RichText")),
            ElevatedButton(onPressed: () {}, child: const Text("PageView")),
            ElevatedButton(onPressed: () {}, child: const Text("Image")),
            ElevatedButton(onPressed: () {}, child: const Text("SnackBar")),
            ElevatedButton(onPressed: () {}, child: const Text("ListView")),
            ElevatedButton(
                onPressed: () {}, child: const Text("Expanded - Flex")),
            ElevatedButton(onPressed: () {}, child: const Text("Wrap")),
            ElevatedButton(
                onPressed: () {},
                child: const Text("DraggableScrollableSheet")),
            ElevatedButton(onPressed: () {}, child: const Text("Stack")),
            ElevatedButton(
                onPressed: () {},
                child: const Text("AboutDialog - AlertDialog")),
            ElevatedButton(onPressed: () {}, child: const Text("Button")),
          ],
        ),
      ),
    );
  }
}
