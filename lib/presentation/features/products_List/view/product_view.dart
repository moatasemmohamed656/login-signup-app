import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/presentation/features/cart/view/cart_Screen.dart';
import 'package:flutter_application_1/presentation/features/products_List/widget/product_cart_item.dart';

class ProductsScreen extends StatelessWidget {
  final List<ProductModel> products;

  const ProductsScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: products.isEmpty
            ? const Center(child: Text('No products available'))
            : GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // عنصرين في الصف
                  crossAxisSpacing: 20, // مسافة أفقية بين العناصر
                  mainAxisSpacing: 16, // مسافة رأسية بين الصفوف
                  childAspectRatio: 0.7, // تناسق عرض/طول الكرت
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductItemCard(product: product);
                },
              ),
      ),
    );
  }
}
