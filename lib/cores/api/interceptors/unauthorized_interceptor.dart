import 'package:dcf_app/cores/api/api_errors/unauthorized_api_error.dart';
import 'package:dio/dio.dart';

class UnauthorizedInterceptor extends Interceptor {
  @override
  Future onError(DioError error) async {
    if (error.response?.statusCode == 401 ||
        error.response?.statusCode == 403) {
      return UnauthorizedApiError();
    }

    return null;
  }
}
