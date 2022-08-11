// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.brand,
    this.name,
    this.price,
    this.priceSign,
    this.currency,
    this.imageLink,
    this.productLink,
    this.websiteLink,
    this.description,
    this.rating,
    this.category,
    this.productType,
    this.tagList,
    this.createdAt,
    this.updatedAt,
    this.productApiUrl,
    this.apiFeaturedImage,
    this.productColors,
  });

  final int? id;
  final String? brand;
  final String? name;
  final String? price;
  final dynamic? priceSign;
  final dynamic? currency;
  final String? imageLink;
  final String? productLink;
  final String? websiteLink;
  final String? description;
  final double? rating;
  final String? category;
  final String? productType;
  final List<dynamic>? tagList;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? productApiUrl;
  final String? apiFeaturedImage;
  final List<ProductColor>? productColors;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        brand: json["brand"] ?? null,
        name: json["name"] == null ? null : json["name"],
        price: json["price"] == null ? null : json["price"],
        priceSign: json["price_sign"],
        currency: json["currency"],
        imageLink: json["image_link"] == null ? null : json["image_link"],
        productLink: json["product_link"] == null ? null : json["product_link"],
        websiteLink: json["website_link"] == null ? null : json["website_link"],
        description: json["description"] == null ? null : json["description"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        category: json["category"] == null ? null : json["category"],
        productType: json["product_type"] == null ? null : json["product_type"],
        tagList: json["tag_list"] == null
            ? null
            : List<dynamic>.from(json["tag_list"].map((x) => x)),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        productApiUrl:
            json["product_api_url"] == null ? null : json["product_api_url"],
        apiFeaturedImage: json["api_featured_image"] == null
            ? null
            : json["api_featured_image"],
        productColors: json["product_colors"] == null
            ? null
            : List<ProductColor>.from(
                json["product_colors"].map((x) => ProductColor.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "brand": brand == null ? null : brand,
        "name": name == null ? null : name,
        "price": price == null ? null : price,
        "price_sign": priceSign,
        "currency": currency,
        "image_link": imageLink == null ? null : imageLink,
        "product_link": productLink == null ? null : productLink,
        "website_link": websiteLink == null ? null : websiteLink,
        "description": description == null ? null : description,
        "rating": rating == null ? null : rating,
        "category": category == null ? null : category,
        "product_type": productType == null ? null : productType,
        "tag_list":
            tagList == null ? null : List<dynamic>.from(tagList!.map((x) => x)),
        "created_at": createdAt == null ? null : createdAt!.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt!.toIso8601String(),
        "product_api_url": productApiUrl == null ? null : productApiUrl,
        "api_featured_image":
            apiFeaturedImage == null ? null : apiFeaturedImage,
        "product_colors": productColors == null
            ? null
            : List<dynamic>.from(productColors!.map((x) => x.toJson())),
      };
}

class ProductColor {
  ProductColor({
    this.hexValue,
    this.colourName,
  });

  final String? hexValue;
  final String? colourName;

  factory ProductColor.fromJson(Map<String, dynamic> json) => ProductColor(
        hexValue: json["hex_value"] == null ? null : json["hex_value"],
        colourName: json["colour_name"] == null ? null : json["colour_name"],
      );

  Map<String, dynamic> toJson() => {
        "hex_value": hexValue == null ? null : hexValue,
        "colour_name": colourName == null ? null : colourName,
      };
}
