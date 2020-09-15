import 'package:dcf_app/cores/api/api_client.dart';
import 'package:dcf_app/cores/network/network_info.dart';
import 'package:dcf_app/services/api/api.dart';
import 'package:dcf_app/services/api/project/project_api_service.dart';
import 'package:dcf_app/services/api/user/user_api_service.dart';
import 'package:dcf_app/ui/view_models/login_view_model.dart';
import 'package:get_it/get_it.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  //cores
  serviceLocator.registerLazySingleton<NetworkInfo>(() => NetworkInfo());

  // services
  serviceLocator.registerLazySingleton<ApiClient>(() => ApiClient());
  serviceLocator.registerLazySingleton<ProjectApiService>(() => ProjectApiService());
  serviceLocator.registerLazySingleton<UserApiService>(() => UserApiService());

  serviceLocator.registerLazySingleton<ApiService>(() => ApiService());

  // view models
  serviceLocator.registerFactory<LoginViewModel>(() => LoginViewModel());
}
