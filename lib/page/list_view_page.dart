import 'package:flutter/material.dart';
import 'package:flutter_101/data/local/product_data_source.dart';
import 'package:flutter_101/widget/card_product.dart';

class ListViewPage extends StatelessWidget {
  static String routeName = "/listView";
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context),
      backgroundColor: Colors.grey.shade200,
      body: GridView.count(
        childAspectRatio: 0.6,
        crossAxisCount: 2,
        children: List.generate(
          products.length,
          (index) => CardProduct(
            product: products[index],
          ),
        ),
      ),
    );
  }

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(
          label: Text(
            "Arama sonuçları",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade500,
            ),
          ),
          prefixIcon: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(
              12,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
    );
  }
}
