import 'package:flutter/material.dart';
import 'package:forcheck/controllers/chart_controller.dart';
import 'package:forcheck/controllers/product_controller.dart';
import 'package:forcheck/views/chart_page.dart';
import 'package:forcheck/views/product_card.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final productController = Get.put(ProductController());
  final chartController = Get.put(ChartController());

  HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX<ProductController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          backgroundColor: Colors.teal,
          elevation: 0,
          title: const Text(
            "Beauty shop",
            style: TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.to(ChartPage(products: chartController.allChart));
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      )),
                  Obx(
                    () => Text(
                      "${chartController.count}",
                      style: const TextStyle(fontSize: 30),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        body: productController.isLoading.value
            ? Center(
                child: CircularProgressIndicator(
                color: Colors.black,
              ))
            : Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                          itemCount: productController.allProducts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) => ProductTile(
                              productController.allProducts[index])),
                    )
                  ],
                ),
              ),
      );
    });
  }
}
