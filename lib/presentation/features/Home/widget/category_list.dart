import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/app_colors.dart';
import 'package:flutter_application_1/core/text_style.dart';
import 'package:flutter_application_1/presentation/features/Home/controller/home_controller.dart';
import 'package:flutter_application_1/presentation/features/Home/widget/category_card.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final HomeController homeController = HomeController();
  List<String> categories = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadCategories();
  }

  Future<void> loadCategories() async {
    try {
      final data = await homeController.getCategories();
      setState(() {
        categories = data;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SizedBox(
        height: 32,
        child: Center(child: CircularProgressIndicator()),
      );
    }

    return SizedBox(
      height: 32,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                // ممكن تضيف هنا حدث عند اختيار الكاتيجوري
              },
              child: CategoryCard(
                categories: categories,
                index: index,
              ),
            ),
          );
        },
      ),
    );
  }
}
