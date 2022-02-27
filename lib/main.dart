import 'package:flutter/material.dart';
import 'package:flutter_101/page/main_page.dart';
import 'package:flutter_101/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      initialRoute: MainPage.routeName,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        buttonTheme: const ButtonThemeData(buttonColor: Colors.orange),
      ),
    );
  }
}
