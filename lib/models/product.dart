// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    int amount;
    int price;
    DateTime dateAdded;
    int user;
    String type;
    String sweetness;
    bool isDeleted;

    Fields({
        required this.name,
        required this.amount,
        required this.price,
        required this.dateAdded,
        required this.user,
        required this.type,
        required this.sweetness,
        required this.isDeleted,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        amount: json["amount"],
        price: json["price"],
        dateAdded: DateTime.parse(json["date_added"]),
        user: json["user"],
        type: json["type"],
        sweetness: json["sweetness"],
        isDeleted: json["is_deleted"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "amount": amount,
        "price": price,
        "date_added": "${dateAdded.year.toString().padLeft(4, '0')}-${dateAdded.month.toString().padLeft(2, '0')}-${dateAdded.day.toString().padLeft(2, '0')}",
        "user": user,
        "type": type,
        "sweetness": sweetness,
        "is_deleted": isDeleted,
    };
}
