import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app-strings.dart';

import 'package:flutter_application_1/presentation/features/products_List/controller/product_list_controller.dart';
import 'package:flutter_application_1/data/models/product_model.dart';
import 'package:flutter_application_1/presentation/features/products_List/view/product_view.dart';
import 'package:flutter_application_1/presentation/widget/app_textformfield.dart';
import 'package:flutter_application_1/core/App_icons.dart';
import 'package:flutter_application_1/core/text_style.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_1/presentation/features/Home/widget/welcome_row.dart';
import 'package:flutter_application_1/presentation/features/Home/widget/offer_card.dart';
import 'package:flutter_application_1/presentation/features/Home/widget/category_list.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final TextEditingController field = TextEditingController();
  final ProductListController productListController = ProductListController();

  List<ProductModel> products = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    try {
      final fetchedProducts = await productListController.getProducts();
      setState(() {
        products = fetchedProducts;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      // ممكن تضيف عرض رسالة خطأ
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 25),
        child: Column(
          children: [
            const WelcomeRow(),
            const SizedBox(height: 20),
            AppTextformfield(
              controller: field,
              width: 335,
              height: 50,
              label: App_strings.Search,
              style: AppTextStyle.smallTextappbar,
              prefix: SizedBox(
                width: 12,
                height: 12,
                child: SvgPicture.asset(
                  AppIcons.iconsearch,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            const SizedBox(height: 30),
            const OffersCard(),
            const SizedBox(height: 20),
            const CategoryList(),
            const SizedBox(height: 30),
            Expanded(
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ProductsScreen(products: products),
            ),
          ],
        ),
      ),
    );
  }
}
