/// api_key : "ZXlKaGJHY2lPaUpJVXpVe..."

class AuthRequest {
  AuthRequest({
      String? apiKey,}){
    _apiKey = apiKey;
}

  AuthRequest.fromJson(dynamic json) {
    _apiKey = json['api_key'];
  }
  String? _apiKey;
AuthRequest copyWith({  String? apiKey,
}) => AuthRequest(  apiKey: apiKey ?? _apiKey,
);
  String? get apiKey => _apiKey;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['api_key'] = _apiKey;
    return map;
  }

}