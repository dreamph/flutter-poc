import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
 // LoginController get loginController => getIt<LoginController>();

  @override
  Future<RequestOptions> onRequest(RequestOptions options) async {
    /*
    final authData = await loginController.getDeviceAuthenticationData();

    if (!authData.hasError &&
        authData.hasData &&
        authData.data.isAuthenticated) {
      options.headers['Authorization'] = 'Bearer ${authData.data.tokenId}';
    }

     */

    return options;
  }
}
