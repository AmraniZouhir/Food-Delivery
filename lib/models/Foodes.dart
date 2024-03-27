import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final String image;
  List<Addon> availableAddons;
  final ProductCategory category;

  Product(
    this.category, {
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.availableAddons,
  });
}

enum ProductCategory {
  BURGERS,
  SALADS,
  SIDES,
  DESSERTS,
  DRINKS,
}

class Addon {
  late String name;
  late double price;
  Addon({required this.name, required this.price});
}
