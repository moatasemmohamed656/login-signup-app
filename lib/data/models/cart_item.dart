import 'package:flutter_application_1/core/remote/api_keys.dart';

class CartItem {
  final int productId;
  final int quantity;

  CartItem({required this.productId, required this.quantity});

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
        productId: (json[ApiKeys.productId] ?? 0).toInt(),
        quantity: (json[ApiKeys.quantity] ?? 0).toInt(),
      );
}
