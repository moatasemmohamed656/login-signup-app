// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/data/models/cart_models.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/presentation/features/cart/controller/cart_controller.dart';
import 'package:flutter_application_1/presentation/features/products_List/controller/product_list_controller.dart';
import 'package:flutter_application_1/presentation/widget/custom_appBar.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartController cartController = CartController();
  final ProductListController productListController = ProductListController();

  bool isLoading = true;
  List<Cart> carts = [];
  List<ProductModel> products = [];

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    try {
      carts = await cartController.getProducts();
      products = await productListController.getProducts();
    } catch (e) {
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Scaffold(
        appBar: CustomAppbar(
          title: "Cart",
          centertitle: true,
          backgroundColor: AppColors.secondary,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(child: CircularProgressIndicator()),
      );
    }

    if (carts.isEmpty) {
      return Scaffold(
        appBar: CustomAppbar(
          title: "Cart",
          centertitle: true,
          backgroundColor: AppColors.secondary,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(child: Text("Cart is empty")),
      );
    }

    final cartItems = carts.first.products;

    return Scaffold(
      appBar: CustomAppbar(
        title: "Cart",
        centertitle: true,
        backgroundColor: AppColors.secondary,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = cartItems[index];
            final product = products.firstWhere(
              (p) => p.id == cartItem.productId,
              // لو ما لاقاش المنتج
            );

            return Container(
              margin: EdgeInsets.only(bottom: 15),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      product.image,
                      width: 100,
                      height: 110,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product.title,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "\$${product.price}",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Quantity: ${cartItem.quantity}",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
