import 'package:flutter/material.dart';

class SheetPage extends StatelessWidget {
  static String routeName = "/Sheet";
  const SheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            child: const Text("BottomSheet"),
            onPressed: () {
              buildShowModalBottomSheet(context);
            },
          ),
          TextButton(
            child: const Text("Draggable Sheet"),
            onPressed: () {
              Navigator.pushNamed(context, "/DraggableScrollableSheet");
            },
          ),
        ],
      ),
    );
  }

  buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      enableDrag: true,
      elevation: 10,
      //barrierColor: Colors.green.shade100,
      isDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            buildTitle(context),
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ],
        );
      },
    );
  }

  Row buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Bottom Sheet Title"),
        ),
        IconButton(
            splashRadius: 8,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.cancel)),
      ],
    );
  }
}
