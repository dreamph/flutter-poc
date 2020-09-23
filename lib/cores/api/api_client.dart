import 'package:dcf_app/cores/exceptions/exceptions.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'api_errors/api_error_message_error.dart';
import 'api_errors/bad_network_api_error.dart';
import 'api_errors/internal_server_api_error.dart';
import 'api_errors/unauthorized_api_error.dart';

class ApiClient {
  String apiBaseUrl;
  bool debugApiClient;
  final Dio dio = Dio();

  ApiClient({this.apiBaseUrl, this.debugApiClient}) {
    dio.options.baseUrl = this.apiBaseUrl;
    dio.options.connectTimeout = const Duration(minutes: 3).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 3).inMilliseconds;
    /*
    dio.interceptors.add(BadNetworkErrorInterceptor());
    dio.interceptors.add(InternalServerErrorInterceptor());
    dio.interceptors.add(AuthInterceptor());
    dio.interceptors.add(UnauthorizedInterceptor());
    dio.interceptors.add(ApiErrorMessageInterceptor());

     */

    if (this.debugApiClient) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
        compact: true,
      ));
    }
  }

  Future<Response> postAsync(String path, dynamic data) {
    return dio.post(path, data: data);
  }

  Future<Response> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await this.postAsync(path, data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on ApiErrorMessageError catch (e) {
      throw ApiErrorMessageException(errorMessage: e.errorMessage);
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> putAsync(String path, dynamic data) {
    return dio.put(path, data: data);
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await this.putAsync(path, data);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on ApiErrorMessageError catch (e) {
      throw ApiErrorMessageException(errorMessage: e.errorMessage);
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> deleteAsync(String path) {
    return dio.delete(path);
  }

  Future<Response> delete(String path) async {
    try {
      return await this.deleteAsync(path);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on ApiErrorMessageError catch (e) {
      throw ApiErrorMessageException(errorMessage: e.errorMessage);
    } on DioError {
      throw ApiException();
    }
  }

  Future<Response> getAsync(String path) {
    return dio.get(path);
  }

  Future<Response> get(String path) async {
    try {
      return await this.getAsync(path);
    } on BadNetworkApiError {
      throw BadNetworkException();
    } on InternalServerApiError {
      throw InternalServerException();
    } on UnauthorizedApiError {
      throw UnauthenticatedException();
    } on ApiErrorMessageError catch (e) {
      throw ApiErrorMessageException(errorMessage: e.errorMessage);
    } on DioError {
      throw ApiException();
    }
  }
}
