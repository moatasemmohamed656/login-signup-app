// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/data/models/product_model.dart';
// import 'package:flutter_application_1/presentation/features/products_List/widget/product_cart.dart';

// class ProductScreen extends StatelessWidget {
//   final List<ProductModel> products;

//   ProductScreen({super.key, required this.products});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: const EdgeInsets.all(12.0),
//       physics: const BouncingScrollPhysics(),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 12,
//         mainAxisSpacing: 12,
//         childAspectRatio: 0.7,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return ProductCard(product: products[index]);
//       },
//     );
//   }
// }
