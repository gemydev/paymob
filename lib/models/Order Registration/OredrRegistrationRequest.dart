/// auth_token : "ZXlKaGlPaUpJVXpVeE1pSX1Y0NJmV5Sn..."
/// delivery_needed : "false"
/// amount_cents : "100"
/// currency : "EGP"
/// merchant_order_id : 5
/// items : [{"name":"ASC1515","amount_cents":"500000","description":"Smart Watch","quantity":"1"},{"name":"ERT6565","amount_cents":"200000","description":"Power Bank","quantity":"1"}]
/// shipping_data : {"apartment":"803","email":"claudette09@exa.com","floor":"42","first_name":"Clifford","street":"Ethan Land","building":"8028","phone_number":"+86(8)9135210487","postal_code":"01898","extra_description":"8 Ram , 128 Giga","city":"Jaskolskiburgh","country":"CR","last_name":"Nicolas","state":"Utah"}
/// shipping_details : {"notes":" test","number_of_packages":1,"weight":1,"weight_unit":"Kilogram","length":1,"width":1,"height":1,"contents":"product of some sorts"}

class OrderRegistrationRequest {
  OrderRegistrationRequest({
      String? authToken, 
      String? deliveryNeeded, 
      String? amountCents, 
      String? currency, 
      int? merchantOrderId, 
      List<Items>? items, 
      ShippingData? shippingData, 
      ShippingDetails? shippingDetails,}){
    _authToken = authToken;
    _deliveryNeeded = deliveryNeeded;
    _amountCents = amountCents;
    _currency = currency;
    _merchantOrderId = merchantOrderId;
    _items = items;
    _shippingData = shippingData;
    _shippingDetails = shippingDetails;
}

  OrderRegistrationRequest.fromJson(dynamic json) {
    _authToken = json['auth_token'];
    _deliveryNeeded = json['delivery_needed'];
    _amountCents = json['amount_cents'];
    _currency = json['currency'];
    _merchantOrderId = json['merchant_order_id'];
    if (json['items'] != null) {
      _items = [];
      json['items'].forEach((v) {
        _items?.add(Items.fromJson(v));
      });
    }
    _shippingData = json['shipping_data'] != null ? ShippingData.fromJson(json['shipping_data']) : null;
    _shippingDetails = json['shipping_details'] != null ? ShippingDetails.fromJson(json['shipping_details']) : null;
  }
  String? _authToken;
  String? _deliveryNeeded;
  String? _amountCents;
  String? _currency;
  int? _merchantOrderId;
  List<Items>? _items;
  ShippingData? _shippingData;
  ShippingDetails? _shippingDetails;
OrderRegistrationRequest copyWith({  String? authToken,
  String? deliveryNeeded,
  String? amountCents,
  String? currency,
  int? merchantOrderId,
  List<Items>? items,
  ShippingData? shippingData,
  ShippingDetails? shippingDetails,
}) => OrderRegistrationRequest(  authToken: authToken ?? _authToken,
  deliveryNeeded: deliveryNeeded ?? _deliveryNeeded,
  amountCents: amountCents ?? _amountCents,
  currency: currency ?? _currency,
  merchantOrderId: merchantOrderId ?? _merchantOrderId,
  items: items ?? _items,
  shippingData: shippingData ?? _shippingData,
  shippingDetails: shippingDetails ?? _shippingDetails,
);
  String? get authToken => _authToken;
  String? get deliveryNeeded => _deliveryNeeded;
  String? get amountCents => _amountCents;
  String? get currency => _currency;
  int? get merchantOrderId => _merchantOrderId;
  List<Items>? get items => _items;
  ShippingData? get shippingData => _shippingData;
  ShippingDetails? get shippingDetails => _shippingDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = _authToken;
    map['delivery_needed'] = _deliveryNeeded;
    map['amount_cents'] = _amountCents;
    map['currency'] = _currency;
    map['merchant_order_id'] = _merchantOrderId;
    if (_items != null) {
      map['items'] = _items?.map((v) => v.toJson()).toList();
    }
    if (_shippingData != null) {
      map['shipping_data'] = _shippingData?.toJson();
    }
    if (_shippingDetails != null) {
      map['shipping_details'] = _shippingDetails?.toJson();
    }
    return map;
  }

}

/// notes : " test"
/// number_of_packages : 1
/// weight : 1
/// weight_unit : "Kilogram"
/// length : 1
/// width : 1
/// height : 1
/// contents : "product of some sorts"

class ShippingDetails {
  ShippingDetails({
      String? notes, 
      int? numberOfPackages, 
      int? weight, 
      String? weightUnit, 
      int? length, 
      int? width, 
      int? height, 
      String? contents,}){
    _notes = notes;
    _numberOfPackages = numberOfPackages;
    _weight = weight;
    _weightUnit = weightUnit;
    _length = length;
    _width = width;
    _height = height;
    _contents = contents;
}

  ShippingDetails.fromJson(dynamic json) {
    _notes = json['notes'];
    _numberOfPackages = json['number_of_packages'];
    _weight = json['weight'];
    _weightUnit = json['weight_unit'];
    _length = json['length'];
    _width = json['width'];
    _height = json['height'];
    _contents = json['contents'];
  }
  String? _notes;
  int? _numberOfPackages;
  int? _weight;
  String? _weightUnit;
  int? _length;
  int? _width;
  int? _height;
  String? _contents;
ShippingDetails copyWith({  String? notes,
  int? numberOfPackages,
  int? weight,
  String? weightUnit,
  int? length,
  int? width,
  int? height,
  String? contents,
}) => ShippingDetails(  notes: notes ?? _notes,
  numberOfPackages: numberOfPackages ?? _numberOfPackages,
  weight: weight ?? _weight,
  weightUnit: weightUnit ?? _weightUnit,
  length: length ?? _length,
  width: width ?? _width,
  height: height ?? _height,
  contents: contents ?? _contents,
);
  String? get notes => _notes;
  int? get numberOfPackages => _numberOfPackages;
  int? get weight => _weight;
  String? get weightUnit => _weightUnit;
  int? get length => _length;
  int? get width => _width;
  int? get height => _height;
  String? get contents => _contents;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['notes'] = _notes;
    map['number_of_packages'] = _numberOfPackages;
    map['weight'] = _weight;
    map['weight_unit'] = _weightUnit;
    map['length'] = _length;
    map['width'] = _width;
    map['height'] = _height;
    map['contents'] = _contents;
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
/// postal_code : "01898"
/// extra_description : "8 Ram , 128 Giga"
/// city : "Jaskolskiburgh"
/// country : "CR"
/// last_name : "Nicolas"
/// state : "Utah"

class ShippingData {
  ShippingData({
      String? apartment, 
      String? email, 
      String? floor, 
      String? firstName, 
      String? street, 
      String? building, 
      String? phoneNumber, 
      String? postalCode, 
      String? extraDescription, 
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
    _postalCode = postalCode;
    _extraDescription = extraDescription;
    _city = city;
    _country = country;
    _lastName = lastName;
    _state = state;
}

  ShippingData.fromJson(dynamic json) {
    _apartment = json['apartment'];
    _email = json['email'];
    _floor = json['floor'];
    _firstName = json['first_name'];
    _street = json['street'];
    _building = json['building'];
    _phoneNumber = json['phone_number'];
    _postalCode = json['postal_code'];
    _extraDescription = json['extra_description'];
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
  String? _postalCode;
  String? _extraDescription;
  String? _city;
  String? _country;
  String? _lastName;
  String? _state;
ShippingData copyWith({  String? apartment,
  String? email,
  String? floor,
  String? firstName,
  String? street,
  String? building,
  String? phoneNumber,
  String? postalCode,
  String? extraDescription,
  String? city,
  String? country,
  String? lastName,
  String? state,
}) => ShippingData(  apartment: apartment ?? _apartment,
  email: email ?? _email,
  floor: floor ?? _floor,
  firstName: firstName ?? _firstName,
  street: street ?? _street,
  building: building ?? _building,
  phoneNumber: phoneNumber ?? _phoneNumber,
  postalCode: postalCode ?? _postalCode,
  extraDescription: extraDescription ?? _extraDescription,
  city: city ?? _city,
  country: country ?? _country,
  lastName: lastName ?? _lastName,
  state: state ?? _state,
);
  String? get apartment => _apartment;
  String? get email => _email;
  String? get floor => _floor;
  String? get firstName => _firstName;
  String? get street => _street;
  String? get building => _building;
  String? get phoneNumber => _phoneNumber;
  String? get postalCode => _postalCode;
  String? get extraDescription => _extraDescription;
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
    map['postal_code'] = _postalCode;
    map['extra_description'] = _extraDescription;
    map['city'] = _city;
    map['country'] = _country;
    map['last_name'] = _lastName;
    map['state'] = _state;
    return map;
  }

}

/// name : "ASC1515"
/// amount_cents : "500000"
/// description : "Smart Watch"
/// quantity : "1"

class Items {
  Items({
      String? name, 
      String? amountCents, 
      String? description, 
      String? quantity,}){
    _name = name;
    _amountCents = amountCents;
    _description = description;
    _quantity = quantity;
}

  Items.fromJson(dynamic json) {
    _name = json['name'];
    _amountCents = json['amount_cents'];
    _description = json['description'];
    _quantity = json['quantity'];
  }
  String? _name;
  String? _amountCents;
  String? _description;
  String? _quantity;
Items copyWith({  String? name,
  String? amountCents,
  String? description,
  String? quantity,
}) => Items(  name: name ?? _name,
  amountCents: amountCents ?? _amountCents,
  description: description ?? _description,
  quantity: quantity ?? _quantity,
);
  String? get name => _name;
  String? get amountCents => _amountCents;
  String? get description => _description;
  String? get quantity => _quantity;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['amount_cents'] = _amountCents;
    map['description'] = _description;
    map['quantity'] = _quantity;
    return map;
  }

}