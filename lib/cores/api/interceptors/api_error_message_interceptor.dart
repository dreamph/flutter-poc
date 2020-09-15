import 'package:dcf_app/cores/api/api_errors/api_error_message_error.dart';
import 'package:dio/dio.dart';

class ApiErrorMessageInterceptor extends Interceptor {
  @override
  Future onResponse(Response response) async {
    if (response != null) {
      if (response.data != null) {
        final error = ApiErrorMessageError.fromJson(
          response.data as Map<String, dynamic>,
        );

        if (error.errorMessage != null) {
          return error;
        }
      }
    }

    return null;
  }
}
