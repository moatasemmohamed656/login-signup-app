import 'package:dio/dio.dart';
import 'package:flutter_application_1/core/remote/api_constaint.dart';

class ApiService {
  final Dio _dio = Dio();

  ApiService() {
    _dio.options.baseUrl = ApiConstants.baseUrl;
    _dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestBody: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  // GET
  Future<Response> get({required String path}) async {
    try {
      return await _dio.get(path);
    } on DioException catch (e) {
      return e.response!;
    } catch (e) {
      throw e;
    }
  }

  // POST
  Future<Response> post({
    required String path,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.post(path, data: data);
    } on DioException catch (e) {
      return e.response!;
    } catch (e) {
      throw e;
    }
  }

  // PUT
  Future<Response> put({
    required String path,
    Map<String, dynamic>? data,
  }) async {
    try {
      return await _dio.put(path, data: data);
    } on DioException catch (e) {
      return e.response!;
    } catch (e) {
      throw e;
    }
  }

  // DELETE
  Future<Response> delete({required String path}) async {
    try {
      return await _dio.delete(path);
    } on DioException catch (e) {
      return e.response!;
    } catch (e) {
      throw e;
    }
  }
}

//  CRUDE OPRERATION
// create - post
// read -> GET
// update -> (put - patch)
// Delete -> Delete
