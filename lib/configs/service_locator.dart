import 'package:dcf_app/cores/utils/http_client.dart';
import 'package:dcf_app/services/api/api_service.dart';
import 'package:dcf_app/services/api/project/project_api_service.dart';
import 'package:dcf_app/services/api/user/user_api_service.dart';
import 'package:dcf_app/ui/view_models/login_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  // services
  serviceLocator.registerLazySingleton<HttpClient>(() => HttpClient());
  serviceLocator
      .registerLazySingleton<ProjectApiService>(() => ProjectApiService());
  serviceLocator.registerLazySingleton<UserApiService>(() => UserApiService());

  serviceLocator.registerLazySingleton<ApiService>(() => ApiService());

  // view models
  serviceLocator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
