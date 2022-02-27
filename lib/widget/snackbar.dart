import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, SnackBar snackBar) {
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

SnackBar snackbar(String text) {
  return SnackBar(
    content: Text(text),
    backgroundColor: Colors.grey.shade800,
  );
}
