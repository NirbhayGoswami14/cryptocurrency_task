class Status {
  Status({
      this.timestamp, 
      this.errorCode, 
      this.errorMessage, 
      this.elapsed, 
      this.creditCount, 
      this.notice, 
      this.totalCount,});

  Status.fromJson(dynamic json) {
    timestamp = json['timestamp'];
    errorCode = json['error_code'];
    errorMessage = json['error_message'];
    elapsed = json['elapsed'];
    creditCount = json['credit_count'];
    notice = json['notice'];
    totalCount = json['total_count'];
  }
  String? timestamp;
  int? errorCode;
  dynamic errorMessage;
  int? elapsed;
  int? creditCount;
  dynamic notice;
  int? totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['timestamp'] = timestamp;
    map['error_code'] = errorCode;
    map['error_message'] = errorMessage;
    map['elapsed'] = elapsed;
    map['credit_count'] = creditCount;
    map['notice'] = notice;
    map['total_count'] = totalCount;
    return map;
  }

}