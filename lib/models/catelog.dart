import 'package:flutter/widgets.dart';
import 'dart:convert';

class CatalogModel {
  static final catModel = CatalogModel._internal();

  CatalogModel._internal();

  factory CatalogModel() => catModel;

  // static List<Item> products = [
  //   Item(
  //     id: 1,
  //     name: "glass",
  //     description: "square shape",
  //     price: 345,
  //     color: "red",
  //     image: "assets/images/chosma.jpeg",
  //   )
  // ];
  static List<Item> products = [
    Item(
      id: 1,
      name: "glass",
      description: "square shape",
      price: 345,
      color: "red",
      image: "assets/images/chosma.jpeg",
    )
  ];

  Item getById(int id) =>
      products.firstWhere((element) => element.id == id, orElse: null);
  Item getPosition(int pos) => products[pos];
}

class Item {
  final int id;
  final String name;
  final String description;
  final num price;
  final String color;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
    required this.image,
  });

  factory Item.fromMap(Map<dynamic, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        description: map["description"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }
  toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "color": color,
        "image": image
      };
}
