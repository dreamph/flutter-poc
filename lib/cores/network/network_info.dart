import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfoBase {
  Future<bool> get isConnected;
}

class NetworkInfo extends NetworkInfoBase {

  NetworkInfo();

  @override
  Future<bool> get isConnected =>  DataConnectionChecker().hasConnection;
}
