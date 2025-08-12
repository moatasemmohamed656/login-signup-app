import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/remote/api_constaint.dart';
import 'package:flutter_application_1/core/remote/api_service.dart';
import 'package:flutter_application_1/data/models/cart_models.dart';

class CartController {
  final ApiService apiService = ApiService();

  Future<List<Cart>> getProducts() async {
    try {
      final response = await apiService.get(path: ApiConstants.carts);

      if (response.statusCode == 200) {
        if (response.data is List) {
          final List dataList = response.data;
          return dataList.map((e) => Cart.fromJson(e)).toList();
        } else {
          throw Exception("Unexpected data format: Expected a List");
        }
      } else {
        throw Exception("Failed to load carts: ${response.statusCode}");
      }
    } on DioError catch (e) {
      throw Exception("Dio error: ${e.message}");
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }
}
