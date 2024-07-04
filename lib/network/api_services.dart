import 'dart:developer';

import 'package:cubit_freeze/network/dio_client.dart';
import 'package:dio/dio.dart';

class ApiServices {
  DioClient dioClient = DioClient();
  Dio client = DioClient.client;

  Future<Response?> get({
    String endPoint='',
    Map<String, dynamic>? queryParameters
  }) async {
    try {
      var response = await client.get(
        endPoint,
        queryParameters: queryParameters,
        options: Options(
          headers: createHeader(),
        ),
      );
      return response;
    } catch (e) {
      log('Catch Error $e');
      return Response(requestOptions: RequestOptions());
    }
  }

  Map<String, String> createHeader() {
    final authHeader = <String, String>{};
    authHeader['Accept'] = 'application/json';
    authHeader['Content-Type'] = 'application/json';
    return authHeader;
  }
}
