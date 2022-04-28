// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class CatalogModel {
  static List<Items> products = [
    Items(
      comp: "apple",
      id: 1,
      name: "iphone 7 ",
      pic:
          "https://www.gizmochina.com/wp-content/uploads/2019/09/Apple-iPhone-11-Pro.jpg",
      price: "35455",
    )
  ];
}

class Items {
  final int id;
  final String name;
  final String comp;
  final String price;
  final String pic;

  Items(
      {required this.id,
      required this.name,
      required this.comp,
      required this.price,
      required this.pic});
  factory Items.fromMap(Map<dynamic, dynamic> map) {
    return Items(
      id: map["id"],
      name: map["name"],
      comp: map["comp"],
      pic: map["pic"],
      price: map["price"],
    );
  }
  toMap() => {
        "id": id,
        "name": name,
        "comp": comp,
        "pic": pic,
        "price": price,
      };
}
