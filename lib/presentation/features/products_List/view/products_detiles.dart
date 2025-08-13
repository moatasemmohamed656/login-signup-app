import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/presentation/widget/app_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Hero(
                tag: product.id!,
                child: Image.asset(product.image, width: 100)), //

            const SizedBox(height: 20),
            //
            Text(product.title,
                style: Theme.of(context).textTheme.headlineSmall),
            //
            const SizedBox(height: 10),
            Text('\$${product.price}',
                style: Theme.of(context).textTheme.titleLarge),
            //
            const SizedBox(height: 20),
            //
            AppButton(
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
