/// auth_token : "ZXlKaGlPaUpJVXpVeE1pSX1Y0NJmV5Sn..."
/// amount_cents : "100"
/// expiration : 3600
/// order_id : "103"
/// billing_data : {"apartment":"803","email":"claudette09@exa.com","floor":"42","first_name":"Clifford","street":"Ethan Land","building":"8028","phone_number":"+86(8)9135210487","shipping_method":"PKG","postal_code":"01898","city":"Jaskolskiburgh","country":"CR","last_name":"Nicolas","state":"Utah"}
/// currency : "EGP"
/// integration_id : 1
/// lock_order_when_paid : "false"

class PaymentKeyRequest {
  PaymentKeyRequest({
      String? authToken, 
      String? amountCents, 
      num? expiration, 
      String? orderId, 
      BillingData? billingData, 
      String? currency, 
      num? integrationId, 
      String? lockOrderWhenPaid,}){
    _authToken = authToken;
    _amountCents = amountCents;
    _expiration = expiration;
    _orderId = orderId;
    _billingData = billingData;
    _currency = currency;
    _integrationId = integrationId;
    _lockOrderWhenPaid = lockOrderWhenPaid;
}

  PaymentKeyRequest.fromJson(dynamic json) {
    _authToken = json['auth_token'];
    _amountCents = json['amount_cents'];
    _expiration = json['expiration'];
    _orderId = json['order_id'];
    _billingData = json['billing_data'] != null ? BillingData.fromJson(json['billing_data']) : null;
    _currency = json['currency'];
    _integrationId = json['integration_id'];
    _lockOrderWhenPaid = json['lock_order_when_paid'];
  }
  String? _authToken;
  String? _amountCents;
  num? _expiration;
  String? _orderId;
  BillingData? _billingData;
  String? _currency;
  num? _integrationId;
  String? _lockOrderWhenPaid;

  String? get authToken => _authToken;
  String? get amountCents => _amountCents;
  num? get expiration => _expiration;
  String? get orderId => _orderId;
  BillingData? get billingData => _billingData;
  String? get currency => _currency;
  num? get integrationId => _integrationId;
  String? get lockOrderWhenPaid => _lockOrderWhenPaid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = _authToken;
    map['amount_cents'] = _amountCents;
    map['expiration'] = _expiration;
    map['order_id'] = _orderId;
    if (_billingData != null) {
      map['billing_data'] = _billingData?.toJson();
    }
    map['currency'] = _currency;
    map['integration_id'] = _integrationId;
    map['lock_order_when_paid'] = _lockOrderWhenPaid;
    return map;
  }

}

/// apartment : "803"
/// email : "claudette09@exa.com"
/// floor : "42"
/// first_name : "Clifford"
/// street : "Ethan Land"
/// building : "8028"
/// phone_number : "+86(8)9135210487"
/// shipping_method : "PKG"
/// postal_code : "01898"
/// city : "Jaskolskiburgh"
/// country : "CR"
/// last_name : "Nicolas"
/// state : "Utah"

class BillingData {
  BillingData({
      String? apartment, 
      String? email, 
      String? floor, 
      String? firstName, 
      String? street, 
      String? building, 
      String? phoneNumber, 
      String? shippingMethod, 
      String? postalCode, 
      String? city, 
      String? country, 
      String? lastName, 
      String? state,}){
    _apartment = apartment;
    _email = email;
    _floor = floor;
    _firstName = firstName;
    _street = street;
    _building = building;
    _phoneNumber = phoneNumber;
    _shippingMethod = shippingMethod;
    _postalCode = postalCode;
    _city = city;
    _country = country;
    _lastName = lastName;
    _state = state;
}

  BillingData.fromJson(dynamic json) {
    _apartment = json['apartment'];
    _email = json['email'];
    _floor = json['floor'];
    _firstName = json['first_name'];
    _street = json['street'];
    _building = json['building'];
    _phoneNumber = json['phone_number'];
    _shippingMethod = json['shipping_method'];
    _postalCode = json['postal_code'];
    _city = json['city'];
    _country = json['country'];
    _lastName = json['last_name'];
    _state = json['state'];
  }
  String? _apartment;
  String? _email;
  String? _floor;
  String? _firstName;
  String? _street;
  String? _building;
  String? _phoneNumber;
  String? _shippingMethod;
  String? _postalCode;
  String? _city;
  String? _country;
  String? _lastName;
  String? _state;

  String? get apartment => _apartment;
  String? get email => _email;
  String? get floor => _floor;
  String? get firstName => _firstName;
  String? get street => _street;
  String? get building => _building;
  String? get phoneNumber => _phoneNumber;
  String? get shippingMethod => _shippingMethod;
  String? get postalCode => _postalCode;
  String? get city => _city;
  String? get country => _country;
  String? get lastName => _lastName;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['apartment'] = _apartment;
    map['email'] = _email;
    map['floor'] = _floor;
    map['first_name'] = _firstName;
    map['street'] = _street;
    map['building'] = _building;
    map['phone_number'] = _phoneNumber;
    map['shipping_method'] = _shippingMethod;
    map['postal_code'] = _postalCode;
    map['city'] = _city;
    map['country'] = _country;
    map['last_name'] = _lastName;
    map['state'] = _state;
    return map;
  }

}