import 'package:forcheck/models/products_model.dart';
import 'package:http/http.dart' as http;

class ProductNetworkHelper {
  static String uri =
      "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline";

  static var client = http.Client();

  static Future getProducts() async {
    var response = await client.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      var responseBody = response.body;
      var bob = productFromJson(responseBody);
      return bob;
    }
    return null;
  }
}
