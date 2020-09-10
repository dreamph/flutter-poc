import 'package:dcf_app/configs/service_locator.dart';
import 'package:dcf_app/services/api/project/project_api_service.dart';
import 'package:dcf_app/services/api/user/user_api_service.dart';

class ApiService {
  final UserApiService _userApiService = serviceLocator<UserApiService>();
  final ProjectApiService _projectApiService =
      serviceLocator<ProjectApiService>();

  UserApiService get userApiService => _userApiService;

  ProjectApiService get projectApiService => _projectApiService;
}
