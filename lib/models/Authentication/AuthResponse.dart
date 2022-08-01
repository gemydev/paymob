/// token : "ZXlKaGJHY2lPaUpJVXpVeE1pSXNJ..."

class AuthResponse {
  AuthResponse({
      String? token,}){
    _token = token;
}

  AuthResponse.fromJson(dynamic json) {
    _token = json['token'];
  }
  String? _token;
AuthResponse copyWith({  String? token,
}) => AuthResponse(  token: token ?? _token,
);
  String? get token => _token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    return map;
  }

}