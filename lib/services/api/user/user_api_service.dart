import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/cores/api/api_client.dart';

class UserApiService {
  final ApiClient _client = serviceLocator<ApiClient>();

}
