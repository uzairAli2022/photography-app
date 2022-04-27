// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';

class Items {
  final int id;
  final String name;
  final String desc;
  final String price;
  final String image;

  const Items(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.image});
}

class CatalogMain {
  static final products = [
    Items(
        desc: 'iphone 13 promax',
        id: 223,
        name: 'iphone',
        price: "\$ 768",
        image:
            "https://cdn.pixabay.com/photo/2017/02/07/16/47/kingfisher-2046453_960_720.jpg")
  ];
}
