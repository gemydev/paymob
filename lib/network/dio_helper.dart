import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: 'https://accept.paymob.com/api/',
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> getData({
    required String url,
    Map<String, dynamic>? query,
    String? auth,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': auth,
    };
    return await dio.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> updateData({
    required String url,
    Map<String, dynamic>? query,
  }) async {
    return await dio.put(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String lang = 'en',
    String? auth,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'lang': lang,
      'Authorization': auth,
      'Accept': 'application/json'
    };
    return dio.post(url, queryParameters: query, data: data);
  }
}
