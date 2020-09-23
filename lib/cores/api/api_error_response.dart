class ApiErrorResponse {
  int _statusCode;
  int _timestamp;
  String _message;
  String _detail;

  int get statusCode => _statusCode;
  int get timestamp => _timestamp;
  String get message => _message;
  String get detail => _detail;

  ApiErrorResponse({
      int statusCode, 
      int timestamp, 
      String message, 
      String detail}){
    _statusCode = statusCode;
    _timestamp = timestamp;
    _message = message;
    _detail = detail;
}

  ApiErrorResponse.fromJson(dynamic json) {
    _statusCode = json["statusCode"];
    _timestamp = json["timestamp"];
    _message = json["message"];
    _detail = json["detail"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["statusCode"] = _statusCode;
    map["timestamp"] = _timestamp;
    map["message"] = _message;
    map["detail"] = _detail;
    return map;
  }

}