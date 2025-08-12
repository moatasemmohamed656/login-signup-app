// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/core/app_colors.dart';
// import 'package:flutter_application_1/data/models/product_model.dart';

// class ProductItem extends StatelessWidget {
//   final ProductModel product;

//   const ProductItem({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: AppColors.secondary,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: const [
//           BoxShadow(
//             color: AppColors.Primary,
//             blurRadius: 6,
//             offset: Offset(0, 4),
//           )
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.network(
//               product.image,
//               height: 140,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(height: 8),
//           Text(
//             product.title,
//             style: const TextStyle(
//               fontSize: 14,
//               fontWeight: FontWeight.bold,
//             ),
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 4),
//           Text(
//             '\$${product.price}',
//             style: TextStyle(
//               fontSize: 13,
//               color: Colors.grey[700],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
