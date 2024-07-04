import 'dart:convert';
import 'package:dio/dio.dart';

import 'exception.dart';

class DioClient {
  factory DioClient() {
    _instance ??= DioClient._internal();
    return _instance!;
  }

  DioClient._internal() {
    BaseOptions options = BaseOptions(
      receiveDataWhenStatusError: true,
      sendTimeout: const Duration(seconds: 60),
      connectTimeout: const Duration(seconds: 60),
      // 60 seconds
      receiveTimeout: const Duration(seconds: 60),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json, // 60 seconds
    );
    client = Dio(options);
    init();
    client.options.requestEncoder = (string, request) => utf8.encode(string);
  }

  static const String userAgent = 'User-Agent';
  static const String contentType = 'Content-Type';
  static const String accept = 'Accept';

  static DioClient? _instance;
  static Dio client = Dio();

  init() async {
    client.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    client.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          handler.next(options);
        },
        onResponse: (r, handler) {
          handler.next(r);
        },
        onError: (error, handler) async {
          if (error.response == null) {
            handleApiResponse(Response(
              requestOptions: RequestOptions(),
              statusCode: 500,
              statusMessage: "Internal Server Error",
            ));
          } else if (error.response?.statusCode == 500 || error.response?.statusCode == 502) {
            handler.reject(error);
          } else {
            handler.next(error);
          }
        },
      ),
    );
  }
}
