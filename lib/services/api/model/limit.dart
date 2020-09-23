
class Limit {
  int pageNumber;
  int pageSize;

  Limit({
    this.pageNumber,
    this.pageSize});

  Limit.fromJson(dynamic json) {
    pageNumber = json["pageNumber"];
    pageSize = json["pageSize"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["pageNumber"] = pageNumber;
    map["pageSize"] = pageSize;
    return map;
  }

}