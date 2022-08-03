import 'Source.dart';

class KioskRequest {
  KioskRequest({
      required this.source,
      required this.paymentToken,});

  KioskRequest.fromJson(dynamic json) {
    source = json['source'] != null ? Source.fromJson(json['source']) : null;
    paymentToken = json['payment_token'];
  }
  Source? source;
  String? paymentToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (source != null) {
      map['source'] = source!.toJson();
    }
    map['payment_token'] = paymentToken;
    return map;
  }

}