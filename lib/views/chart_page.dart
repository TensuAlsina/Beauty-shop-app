import 'package:flutter/material.dart';
import 'package:forcheck/models/products_model.dart';

class ChartPage extends StatelessWidget {
  final List products;

  const ChartPage({super.key, required this.products});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: products.isEmpty
          ? Center(
              child: Text("You choose nothing"),
            )
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => Text("${products[index].name}")),
    );
  }
}
