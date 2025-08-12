import 'package:flutter_application_1/core/remote/api_constaint.dart';
import 'package:flutter_application_1/core/remote/api_service.dart';

class HomeController {
  final ApiService apiService = ApiService();

  Future<List<String>> getCategories() async {
    try {
      final response = await apiService.get(path: ApiConstants.categories);

      // debugPrint(response.data.runtimeType.toString());
      if (response.statusCode == 200) {
        final List<dynamic> dataList = response.data as List<dynamic>;
        return dataList.map((e) => e.toString()).toList();
      }
      return [];
    } catch (e) {
      rethrow; // == throw(e)
    }
  }

  // Future<List<Product>> getProducts() async {
  //   try {
  //     final response = await apiService.get(path: ApiConstants.products);
  //     final List<dynamic> dataList = response.data as List;
  //     // debugPrint(response.data.runtimeType.toString());
  //     if (response.statusCode == 200) {
  //       return dataList.map((e) => Product.fromJson(e)).toList();
  //     }
  //     return [];
  //   } catch (e) {
  //     rethrow; // == throw(e)
  //   }
  // }
}
