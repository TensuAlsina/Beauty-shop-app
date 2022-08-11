import 'package:forcheck/models/products_model.dart';
import 'package:forcheck/services/product_network.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var allProducts = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  getProducts() async {
    List<Product> fromApi = await ProductNetworkHelper.getProducts();

    if (fromApi.isNotEmpty) {
      isLoading.toggle();
      allProducts.value = fromApi;
    }
    // if (fromApi) {

    // } else {
    //   print("the result is null");
    // }
  }
}
