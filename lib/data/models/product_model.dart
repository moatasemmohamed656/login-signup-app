import 'package:flutter_application_1/core/remote/api_keys.dart';
import 'package:flutter_application_1/data/models/rating_model.dart';

class ProductModel {
  final int id;
  final String title;
  final String description;
  final String category;
  final String image;
  final double price;
  final Rating? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json[ApiKeys.id],
      title: json[ApiKeys.title],
      description: json[ApiKeys.description],
      category: json[ApiKeys.category],
      image: json[ApiKeys.image],
      price: (json[ApiKeys.price] as num).toDouble(),
      rating: json[ApiKeys.rate] != null
          ? Rating.fromJson(json[ApiKeys.rate])
          : null,
    );
  }
}
