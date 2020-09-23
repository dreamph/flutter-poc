import 'package:json_annotation/json_annotation.dart';

//https://medium.com/@hasimyerlikaya/flutter-custom-datetime-serialization-with-jsonconverter-5f57f93d537
class CustomDateTimeConverter implements JsonConverter<DateTime, int> {
  const CustomDateTimeConverter();

  @override
  DateTime fromJson(int value) {
    if(value == null) {
      return null;
    }
    return DateTime.fromMillisecondsSinceEpoch(value);
  }

  @override
  int toJson(DateTime value) {
    if(value == null) {
      return null;
    }
    return value.millisecondsSinceEpoch;
  }

  /*
  static DateTime fromJsonData(int value) {
    return CustomDateTimeConverter().fromJson(value);
  }

  static int toJsonData(DateTime value) {
    return CustomDateTimeConverter().toJson(value);
  }
   */
}