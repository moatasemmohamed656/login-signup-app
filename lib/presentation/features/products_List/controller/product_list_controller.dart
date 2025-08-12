import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/remote/api_constaint.dart';
import 'package:flutter_application_1/core/remote/api_service.dart';
import 'package:flutter_application_1/data/models/product_model.dart';

class ProductListController {
  final ApiService apiService = ApiService();

  Future<List<ProductModel>> getProducts() async {
    try {
      final response = await apiService.get(path: ApiConstants.products);
      final List<dynamic> dataList = response.data as List;
      // debugPrint(response.data.runtimeType.toString());
      if (response.statusCode == 200) {
        return dataList.map((e) => ProductModel.fromJson(e)).toList();
      }
      return [];
    } catch (e) {
      rethrow; // == throw(e)
    }
  }
}
