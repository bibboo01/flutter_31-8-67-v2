// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    String productName;
    String productType;
    String price;
    String unit;

    Welcome({
        required this.productName,
        required this.productType,
        required this.price,
        required this.unit,
    });

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        productName: json["product_name"],
        productType: json["product_type"],
        price: json["price"],
        unit: json["unit"],
    );

    Map<String, dynamic> toJson() => {
        "product_name": productName,
        "product_type": productType,
        "price": price,
        "unit": unit,
    };
}
