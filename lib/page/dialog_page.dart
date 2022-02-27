import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  static String routeName = "/Dialog";
  const DialogPage({Key? key}) : super(key: key);

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
            child: const Text("Alert Dialog"),
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => buildAlertDialog(context),
              );
            },
          ),
          TextButton(
            child: const Text("About Dialog"),
            onPressed: () {
              buildShowAboutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  void buildShowAboutDialog(BuildContext context) {
    return showAboutDialog(
      context: context,
      applicationName: "Trendyol",
      applicationVersion: "6.9.2",
      applicationIcon: const Icon(Icons.add_shopping_cart),
      children: [
        const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
      ],
    );
  }

  AlertDialog buildAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text("Uyarı"),
      content: const Text("Ürünü silmek istediğinize emin misiniz? "),
      elevation: 24,
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Hayır")),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Evet"))
      ],
      actionsAlignment: MainAxisAlignment.end,
    );
  }
}
