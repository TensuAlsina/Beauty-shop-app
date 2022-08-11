import 'package:forcheck/models/products_model.dart';
import 'package:get/get.dart';

class ChartController extends GetxController {
  var allChart = [].obs;
  int get count => allChart.length;

  addToChart(Product product) {
    if (!allChart.contains(product)) {
      allChart.add(product);
    } else {}
  }
}
