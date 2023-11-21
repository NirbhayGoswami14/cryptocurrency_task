import 'Usd.dart';

class Quote {
  Quote({
      this.usd,});

  Quote.fromJson(dynamic json) {
    usd = json['USD'] != null ? Usd.fromJson(json['USD']) : null;
  }
  Usd? usd;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (usd != null) {
      map['USD'] = usd?.toJson();
    }
    return map;
  }

}