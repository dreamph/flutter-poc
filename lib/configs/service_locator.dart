import 'package:dcf_app/cores/api/api_client.dart';
import 'package:dcf_app/cores/network/network_info.dart';
import 'package:dcf_app/services/api/project/project_api_service.dart';
import 'package:dcf_app/services/api/user/user_api_service.dart';
import 'package:dcf_app/services/app/user_login_service.dart';
import 'package:dcf_app/services/app_service.dart';
import 'package:dcf_app/ui/pages/login/login_controller.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  //cores
  serviceLocator.registerLazySingleton<NetworkInfo>(() => NetworkInfo());
  serviceLocator.registerLazySingleton<Logger>(() => Logger());

  // app services
  serviceLocator.registerLazySingleton<UserLoginService>(() => UserLoginService());

  // api services
  serviceLocator.registerLazySingleton<ApiClient>(() => ApiClient());
  serviceLocator.registerLazySingleton<ProjectApiService>(() => ProjectApiService());
  serviceLocator.registerLazySingleton<UserApiService>(() => UserApiService());

  //all service
  serviceLocator.registerLazySingleton<AppService>(() => AppService());

  // view controller
  serviceLocator.registerFactory<LoginController>(() => LoginController());
}
