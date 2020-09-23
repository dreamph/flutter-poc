/// statusCode : 500
/// timestamp : 1600758444860
/// message : "Internal Error:JSON parse error: Unexpected character ('}' (code 125)): was expecting double-quote to start field name; nested exception is com.fasterxml.jackson.core.JsonParseException: Unexpected character ('}' (code 125)): was expecting double-quote to start field name\n at [Source: (PushbackInputStream); line: 4, column: 2]"
/// detail : "uri=/api/user/login;client=127.0.0.1;requestId=bf682848-1807-4db4-929e-edec17052a2d"

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