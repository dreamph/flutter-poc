import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/api/api_errors/bad_network_api_error.dart';
import 'package:dcf_app/cores/network/network_info.dart';
import 'package:dio/dio.dart';

class BadNetworkErrorInterceptor extends Interceptor {
  final NetworkInfo _networkInfo = serviceLocator<NetworkInfo>();

  @override
  Future onRequest(RequestOptions options) async {
    return options;
  }

  @override
  Future onError(DioError error) async {
    if (error.response == null && !await _networkInfo.isConnected) {
      return BadNetworkApiError();
    }

    return null;
  }
}
