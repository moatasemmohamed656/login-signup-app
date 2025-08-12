import 'package:flutter_application_1/core/remote/api_keys.dart';
import 'package:flutter_application_1/data/models/cart_item.dart';

class Cart {
  final int id;
  final int userId;
  final DateTime date;
  final List<CartItem> products;

  Cart({
    required this.id,
    required this.date,
    required this.userId,
    required this.products,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json[ApiKeys.id] ?? 0,
      userId: json[ApiKeys.userid] ?? 0,
      date:
          json[ApiKeys.date] != null && json[ApiKeys.date].toString().isNotEmpty
              ? DateTime.parse(json[ApiKeys.date])
              : DateTime.now(),
      products: (json[ApiKeys.products] as List<dynamic>?)
              ?.map((x) => CartItem.fromJson(x))
              .toList() ??
          [],
    );
  }
}
