import 'package:dcf_app/cores/api/api_error_response.dart';

class ApiResponse<T> {
  T content;
  bool success;
  ApiErrorResponse error;

  ApiResponse({this.content, this.success, this.error});
}

class ApiResponseBuilder {
  static ApiResponse<T> toSuccess<T>(T content) {
    return ApiResponse<T>(
        success: true,
        content : content,
        error: null
    );
  }

  static ApiResponse<T> toError<T>(String jsonResponse) {
    return ApiResponse<T>(
        success: false,
        content : null,
        error: ApiErrorResponse.fromJson(jsonResponse)
    );
  }
}