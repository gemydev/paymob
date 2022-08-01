import 'package:paymob/models/Order%20Registration/OredrRegistrationRequest.dart';

/// id : 103
/// created_at : "2017-01-10T05:41:15.700814Z"
/// delivery_needed : "false"
/// merchant : {"id":28,"created_at":"2016-11-17T15:02:53.646620Z","phones":["011111111111","012324151432"],"company_emails":["brendon42@cummings-windler.biz","jim50@sipes-kunze.com"],"company_name":"Wuckert, Zieme and Dach","state":"Oklahoma","country":"Oman","city":"Port Arvillachester","postal_code":"83372","street":"Walker Ramp"}
/// collector : "null"
/// amount_cents : 100
/// shipping_data : {"id":80,"first_name":"test","last_name":"account","street":"example","building":"6","floor":"4","apartment":"404","city":"cairo","state":"egypt","country":"egypt","email":"test@example.com","phone_number":"00201000212058","postal_code":"123456","extra_description":"test asdf","shipping_method":"EM","order_id":103,"order":103}
/// currency : "EGP"
/// is_payment_locked : "false"
/// merchant_order_id : "null"
/// wallet_notification : "null"
/// paid_amount_cents : 0
/// items : []

class OrderRegistrationResponse {
  OrderRegistrationResponse({
      num? id, 
      String? createdAt, 
      String? deliveryNeeded, 
      Merchant? merchant, 
      String? collector, 
      num? amountCents, 
      ShippingData? shippingData, 
      String? currency, 
      String? isPaymentLocked, 
      String? merchantOrderId, 
      String? walletNotification, 
      num? paidAmountCents, 
      List<dynamic>? items,}){
    _id = id;
    _createdAt = createdAt;
    _deliveryNeeded = deliveryNeeded;
    _merchant = merchant;
    _collector = collector;
    _amountCents = amountCents;
    _shippingData = shippingData;
    _currency = currency;
    _isPaymentLocked = isPaymentLocked;
    _merchantOrderId = merchantOrderId;
    _walletNotification = walletNotification;
    _paidAmountCents = paidAmountCents;
    _items = items;
}

  OrderRegistrationResponse.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _deliveryNeeded = json['delivery_needed'];
    _merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    _collector = json['collector'];
    _amountCents = json['amount_cents'];
    _shippingData = json['shipping_data'] != null ? ShippingData.fromJson(json['shipping_data']) : null;
    _currency = json['currency'];
    _isPaymentLocked = json['is_payment_locked'];
    _merchantOrderId = json['merchant_order_id'];
    _walletNotification = json['wallet_notification'];
    _paidAmountCents = json['paid_amount_cents'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(json));
      });
    }
  }
  num? _id;
  String? _createdAt;
  String? _deliveryNeeded;
  Merchant? _merchant;
  String? _collector;
  num? _amountCents;
  ShippingData? _shippingData;
  String? _currency;
  String? _isPaymentLocked;
  String? _merchantOrderId;
  String? _walletNotification;
  num? _paidAmountCents;
  List<dynamic>? _items;

  num? get id => _id;
  String? get createdAt => _createdAt;
  String? get deliveryNeeded => _deliveryNeeded;
  Merchant? get merchant => _merchant;
  String? get collector => _collector;
  num? get amountCents => _amountCents;
  ShippingData? get shippingData => _shippingData;
  String? get currency => _currency;
  String? get isPaymentLocked => _isPaymentLocked;
  String? get merchantOrderId => _merchantOrderId;
  String? get walletNotification => _walletNotification;
  num? get paidAmountCents => _paidAmountCents;
  List<dynamic>? get items => _items;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['created_at'] = _createdAt;
    map['delivery_needed'] = _deliveryNeeded;
    if (_merchant != null) {
      map['merchant'] = _merchant?.toJson();
    }
    map['collector'] = _collector;
    map['amount_cents'] = _amountCents;
    if (_shippingData != null) {
      map['shipping_data'] = _shippingData?.toJson();
    }
    map['currency'] = _currency;
    map['is_payment_locked'] = _isPaymentLocked;
    map['merchant_order_id'] = _merchantOrderId;
    map['wallet_notification'] = _walletNotification;
    map['paid_amount_cents'] = _paidAmountCents;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 80
/// first_name : "test"
/// last_name : "account"
/// street : "example"
/// building : "6"
/// floor : "4"
/// apartment : "404"
/// city : "cairo"
/// state : "egypt"
/// country : "egypt"
/// email : "test@example.com"
/// phone_number : "00201000212058"
/// postal_code : "123456"
/// extra_description : "test asdf"
/// shipping_method : "EM"
/// order_id : 103
/// order : 103

class ShippingData {
  ShippingData({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? street, 
      String? building, 
      String? floor, 
      String? apartment, 
      String? city, 
      String? state, 
      String? country, 
      String? email, 
      String? phoneNumber, 
      String? postalCode, 
      String? extraDescription, 
      String? shippingMethod, 
      num? orderId, 
      num? order,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _street = street;
    _building = building;
    _floor = floor;
    _apartment = apartment;
    _city = city;
    _state = state;
    _country = country;
    _email = email;
    _phoneNumber = phoneNumber;
    _postalCode = postalCode;
    _extraDescription = extraDescription;
    _shippingMethod = shippingMethod;
    _orderId = orderId;
    _order = order;
}

  ShippingData.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _street = json['street'];
    _building = json['building'];
    _floor = json['floor'];
    _apartment = json['apartment'];
    _city = json['city'];
    _state = json['state'];
    _country = json['country'];
    _email = json['email'];
    _phoneNumber = json['phone_number'];
    _postalCode = json['postal_code'];
    _extraDescription = json['extra_description'];
    _shippingMethod = json['shipping_method'];
    _orderId = json['order_id'];
    _order = json['order'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _street;
  String? _building;
  String? _floor;
  String? _apartment;
  String? _city;
  String? _state;
  String? _country;
  String? _email;
  String? _phoneNumber;
  String? _postalCode;
  String? _extraDescription;
  String? _shippingMethod;
  num? _orderId;
  num? _order;

  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get street => _street;
  String? get building => _building;
  String? get floor => _floor;
  String? get apartment => _apartment;
  String? get city => _city;
  String? get state => _state;
  String? get country => _country;
  String? get email => _email;
  String? get phoneNumber => _phoneNumber;
  String? get postalCode => _postalCode;
  String? get extraDescription => _extraDescription;
  String? get shippingMethod => _shippingMethod;
  num? get orderId => _orderId;
  num? get order => _order;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['street'] = _street;
    map['building'] = _building;
    map['floor'] = _floor;
    map['apartment'] = _apartment;
    map['city'] = _city;
    map['state'] = _state;
    map['country'] = _country;
    map['email'] = _email;
    map['phone_number'] = _phoneNumber;
    map['postal_code'] = _postalCode;
    map['extra_description'] = _extraDescription;
    map['shipping_method'] = _shippingMethod;
    map['order_id'] = _orderId;
    map['order'] = _order;
    return map;
  }

}

/// id : 28
/// created_at : "2016-11-17T15:02:53.646620Z"
/// phones : ["011111111111","012324151432"]
/// company_emails : ["brendon42@cummings-windler.biz","jim50@sipes-kunze.com"]
/// company_name : "Wuckert, Zieme and Dach"
/// state : "Oklahoma"
/// country : "Oman"
/// city : "Port Arvillachester"
/// postal_code : "83372"
/// street : "Walker Ramp"

class Merchant {
  Merchant({
      num? id, 
      String? createdAt, 
      List<String>? phones, 
      List<String>? companyEmails, 
      String? companyName, 
      String? state, 
      String? country, 
      String? city, 
      String? postalCode, 
      String? street,}){
    _id = id;
    _createdAt = createdAt;
    _phones = phones;
    _companyEmails = companyEmails;
    _companyName = companyName;
    _state = state;
    _country = country;
    _city = city;
    _postalCode = postalCode;
    _street = street;
}

  Merchant.fromJson(dynamic json) {
    _id = json['id'];
    _createdAt = json['created_at'];
    _phones = json['phones'] != null ? json['phones'].cast<String>() : [];
    _companyEmails = json['company_emails'] != null ? json['company_emails'].cast<String>() : [];
    _companyName = json['company_name'];
    _state = json['state'];
    _country = json['country'];
    _city = json['city'];
    _postalCode = json['postal_code'];
    _street = json['street'];
  }
  num? _id;
  String? _createdAt;
  List<String>? _phones;
  List<String>? _companyEmails;
  String? _companyName;
  String? _state;
  String? _country;
  String? _city;
  String? _postalCode;
  String? _street;

  num? get id => _id;
  String? get createdAt => _createdAt;
  List<String>? get phones => _phones;
  List<String>? get companyEmails => _companyEmails;
  String? get companyName => _companyName;
  String? get state => _state;
  String? get country => _country;
  String? get city => _city;
  String? get postalCode => _postalCode;
  String? get street => _street;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['created_at'] = _createdAt;
    map['phones'] = _phones;
    map['company_emails'] = _companyEmails;
    map['company_name'] = _companyName;
    map['state'] = _state;
    map['country'] = _country;
    map['city'] = _city;
    map['postal_code'] = _postalCode;
    map['street'] = _street;
    return map;
  }

}