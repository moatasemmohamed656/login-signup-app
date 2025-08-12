

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/core/App_icons.dart';
// import 'package:flutter_application_1/core/app_colors.dart';
// import 'package:flutter_application_1/core/text_style.dart';
// import 'package:flutter_application_1/data/models/product_model.dart';
// import 'package:flutter_svg/flutter_svg.dart';


// class ProductCard extends StatelessWidget {
//   final ProductModel product;

//   const ProductCard({super.key, required this.product});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 160,
//       decoration: BoxDecoration(
//         color: AppColors.secondary,
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Column(
//         children: [
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//               ClipRRect(
//                 borderRadius:
//                     const BorderRadius.vertical(top: Radius.circular(12)),
//                 child: Image.network(
//                   product.image,
//                   width: double.infinity,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//               Positioned(
//                 top: 8,
//                 right: 8,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: AppColors.secondary.withOpacity(0.8),
//                     shape: BoxShape.circle,
//                   ),
//                   child: IconButton(
//                     icon: const Icon(Icons.favorite_border),
//                     color: AppColors.Primary,
//                     onPressed: () {},
//                   ),
//                 ),
//               ),
//               Positioned(
//                 bottom: -25,
//                 left: 58,
//                 child: CircleAvatar(
//                   radius: 22,
//                   backgroundColor: Colors.black,
//                   child: SvgPicture.asset(
//                     AppIcons.appbaricon,
//                     color: AppColors.secondary,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 30),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: Text(
//               product.title,
//               style: AppTextStyle.smallTextappbar,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child:
//                 Text("\$${product.price}", style: AppTextStyle.smallTextappbar),
//           ),
//         ],
//       ),
//     );
//   }
// }
