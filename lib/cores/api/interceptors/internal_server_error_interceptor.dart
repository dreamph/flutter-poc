import 'package:dcf_app/cores/api/api_errors/internal_server_api_error.dart';
import 'package:dio/dio.dart';

class InternalServerErrorInterceptor extends Interceptor {
  @override
  Future onError(DioError error) async {
    if (error.response != null) {
      if (error.response.statusCode >= 500 && error.response.statusCode < 600) {
        return InternalServerApiError();
      }
    }

    return null;
  }
}
