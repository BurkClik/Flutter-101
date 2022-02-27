import 'package:flutter/material.dart';

class DraggableSheetPage extends StatelessWidget {
  static String routeName = "/DraggableScrollableSheet";
  const DraggableSheetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Draggable Sheet Page"),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.4,
        minChildSize: 0.2,
        maxChildSize: 0.8,
        builder: (BuildContext context, ScrollController scrollController) {
          return SizedBox.expand(
            child: Column(
              children: [
                buildTitleContainer(MediaQuery.of(context).size.width),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.separated(
                      controller: scrollController,
                      itemBuilder: (context, index) => Text("Item : $index "),
                      itemCount: 25,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  Container buildTitleContainer(double width) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
      width: width,
      child: const Center(child: Text("Title")),
    );
  }
}
