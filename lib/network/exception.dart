import 'package:dio/dio.dart';

String handleApiResponse(Response<dynamic> response) {
  switch (response.statusCode) {
    case 401:
      return 'Credentials mismatched';
    case 400:
      return 'Credentials mismatched';
    case 403:
      return 'Unauthorized request';

    case 404:
      return 'Not found';

    case 409:
      return 'Error due to a conflict';

    case 408:
      return 'Connection request timeout';
    case 500:
      return 'Internal Server Error';

    case 502:
      return 'Unreachable';

    case 503:
      return 'Service unavailable';

    default:
      return 'Received invalid status code: ${response.statusCode}';
  }
}