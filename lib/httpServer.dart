import "package:dio/dio.dart";
import 'dart:convert';

enum Method { POST, GET, DELETE, PATCH }

class HttpService {
  Dio? _dio;

  Future<HttpService> init(BaseOptions options) async {
    _dio = Dio(options);
    return this;
  }

  Future<dynamic> request(
      {required String endpoint,
      required Method method,
      Map<String, dynamic>? params}) async {
    Response response;

    try {
      if (method == Method.GET) {
        response = await _dio!.get(endpoint, queryParameters: params);
      } else if (method == Method.POST) {
        response = await _dio!.post(endpoint, data: json.encode(params));
      } else if (method == Method.DELETE) {
        response = await _dio!.delete(endpoint);
      } else {
        response = await _dio!.patch(endpoint);
      }

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception("Something went wrong");
      }
    } catch (e) {
      throw Exception("Something went wrong");
    }
  }
}
