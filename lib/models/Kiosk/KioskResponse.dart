/// id : 580
/// pending : "true"
/// amount_cents : 100
/// success : "false"
/// is_auth : "false"
/// is_capture : "false"
/// is_standalone_payment : "true"
/// is_voided : "false"
/// is_refunded : "false"
/// is_3d_secure : "false"
/// integration_id : 35
/// profile_id : 1
/// has_parent_transaction : "false"
/// order : 103
/// created_at : "2018-04-18T12:29:43.523592"
/// transaction_processed_callback_responses : []
/// currency : "EGP"
/// source_data : {"pan":"","type":"aggregator","sub_type":"AGGREGATOR"}
/// api_source : "OTHER"
/// is_void : "false"
/// is_refund : "false"
/// data : {"amount":"null","gateway_integration_pk":35,"agg_terminal":"null","klass":"CAGGPayment","rrn":"null","due_amount":100,"ref":"null","message":"Pending Payment","txn_response_code":"05","biller":"null","bill_reference":580,"from_user":null}
/// is_hidden : "false"
/// payment_key_claims : {"currency":"EGP","amount_cents":100,"integration_id":35,"order":103,"user_id":2}
/// error_occured : "false"
/// is_live : "false"
/// other_endpoint_reference : "null"
/// refunded_amount_cents : 0
/// is_captured : "false"
/// captured_amount : 0
/// merchant_staff_tag : "null"
/// owner : 2
/// parent_transaction : null

class KioskResponse {
  KioskResponse({
      num? id, 
      String? pending, 
      num? amountCents, 
      String? success, 
      String? isAuth, 
      String? isCapture, 
      String? isStandalonePayment, 
      String? isVoided, 
      String? isRefunded, 
      String? is3dSecure, 
      num? integrationId, 
      num? profileId, 
      String? hasParentTransaction, 
      num? order, 
      String? createdAt, 
      List<dynamic>? transactionProcessedCallbackResponses, 
      String? currency, 
      SourceData? sourceData, 
      String? apiSource, 
      String? isVoid, 
      String? isRefund, 
      Data? data, 
      String? isHidden, 
      PaymentKeyClaims? paymentKeyClaims, 
      String? errorOccured, 
      String? isLive, 
      String? otherEndpointReference, 
      num? refundedAmountCents, 
      String? isCaptured, 
      num? capturedAmount, 
      String? merchantStaffTag, 
      num? owner, 
      dynamic parentTransaction,}){
    _id = id;
    _pending = pending;
    _amountCents = amountCents;
    _success = success;
    _isAuth = isAuth;
    _isCapture = isCapture;
    _isStandalonePayment = isStandalonePayment;
    _isVoided = isVoided;
    _isRefunded = isRefunded;
    _is3dSecure = is3dSecure;
    _integrationId = integrationId;
    _profileId = profileId;
    _hasParentTransaction = hasParentTransaction;
    _order = order;
    _createdAt = createdAt;
    _transactionProcessedCallbackResponses = transactionProcessedCallbackResponses;
    _currency = currency;
    _sourceData = sourceData;
    _apiSource = apiSource;
    _isVoid = isVoid;
    _isRefund = isRefund;
    _data = data;
    _isHidden = isHidden;
    _paymentKeyClaims = paymentKeyClaims;
    _errorOccured = errorOccured;
    _isLive = isLive;
    _otherEndpointReference = otherEndpointReference;
    _refundedAmountCents = refundedAmountCents;
    _isCaptured = isCaptured;
    _capturedAmount = capturedAmount;
    _merchantStaffTag = merchantStaffTag;
    _owner = owner;
    _parentTransaction = parentTransaction;
}

  KioskResponse.fromJson(dynamic json) {
    _id = json['id'];
    _pending = json['pending'];
    _amountCents = json['amount_cents'];
    _success = json['success'];
    _isAuth = json['is_auth'];
    _isCapture = json['is_capture'];
    _isStandalonePayment = json['is_standalone_payment'];
    _isVoided = json['is_voided'];
    _isRefunded = json['is_refunded'];
    _is3dSecure = json['is_3d_secure'];
    _integrationId = json['integration_id'];
    _profileId = json['profile_id'];
    _hasParentTransaction = json['has_parent_transaction'];
    _order = json['order'];
    _createdAt = json['created_at'];
    if (json['transaction_processed_callback_responses'] != null) {
      _transactionProcessedCallbackResponses = [];
      json['transaction_processed_callback_responses'].forEach((v) {
        _transactionProcessedCallbackResponses?.add(KioskResponse.fromJson(v));
      });
    }
    _currency = json['currency'];
    _sourceData = json['source_data'] != null ? SourceData.fromJson(json['source_data']) : null;
    _apiSource = json['api_source'];
    _isVoid = json['is_void'];
    _isRefund = json['is_refund'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _isHidden = json['is_hidden'];
    _paymentKeyClaims = json['payment_key_claims'] != null ? PaymentKeyClaims.fromJson(json['payment_key_claims']) : null;
    _errorOccured = json['error_occured'];
    _isLive = json['is_live'];
    _otherEndpointReference = json['other_endpoint_reference'];
    _refundedAmountCents = json['refunded_amount_cents'];
    _isCaptured = json['is_captured'];
    _capturedAmount = json['captured_amount'];
    _merchantStaffTag = json['merchant_staff_tag'];
    _owner = json['owner'];
    _parentTransaction = json['parent_transaction'];
  }
  num? _id;
  String? _pending;
  num? _amountCents;
  String? _success;
  String? _isAuth;
  String? _isCapture;
  String? _isStandalonePayment;
  String? _isVoided;
  String? _isRefunded;
  String? _is3dSecure;
  num? _integrationId;
  num? _profileId;
  String? _hasParentTransaction;
  num? _order;
  String? _createdAt;
  List<dynamic>? _transactionProcessedCallbackResponses;
  String? _currency;
  SourceData? _sourceData;
  String? _apiSource;
  String? _isVoid;
  String? _isRefund;
  Data? _data;
  String? _isHidden;
  PaymentKeyClaims? _paymentKeyClaims;
  String? _errorOccured;
  String? _isLive;
  String? _otherEndpointReference;
  num? _refundedAmountCents;
  String? _isCaptured;
  num? _capturedAmount;
  String? _merchantStaffTag;
  num? _owner;
  dynamic _parentTransaction;

  num? get id => _id;
  String? get pending => _pending;
  num? get amountCents => _amountCents;
  String? get success => _success;
  String? get isAuth => _isAuth;
  String? get isCapture => _isCapture;
  String? get isStandalonePayment => _isStandalonePayment;
  String? get isVoided => _isVoided;
  String? get isRefunded => _isRefunded;
  String? get is3dSecure => _is3dSecure;
  num? get integrationId => _integrationId;
  num? get profileId => _profileId;
  String? get hasParentTransaction => _hasParentTransaction;
  num? get order => _order;
  String? get createdAt => _createdAt;
  List<dynamic>? get transactionProcessedCallbackResponses => _transactionProcessedCallbackResponses;
  String? get currency => _currency;
  SourceData? get sourceData => _sourceData;
  String? get apiSource => _apiSource;
  String? get isVoid => _isVoid;
  String? get isRefund => _isRefund;
  Data? get data => _data;
  String? get isHidden => _isHidden;
  PaymentKeyClaims? get paymentKeyClaims => _paymentKeyClaims;
  String? get errorOccured => _errorOccured;
  String? get isLive => _isLive;
  String? get otherEndpointReference => _otherEndpointReference;
  num? get refundedAmountCents => _refundedAmountCents;
  String? get isCaptured => _isCaptured;
  num? get capturedAmount => _capturedAmount;
  String? get merchantStaffTag => _merchantStaffTag;
  num? get owner => _owner;
  dynamic get parentTransaction => _parentTransaction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pending'] = _pending;
    map['amount_cents'] = _amountCents;
    map['success'] = _success;
    map['is_auth'] = _isAuth;
    map['is_capture'] = _isCapture;
    map['is_standalone_payment'] = _isStandalonePayment;
    map['is_voided'] = _isVoided;
    map['is_refunded'] = _isRefunded;
    map['is_3d_secure'] = _is3dSecure;
    map['integration_id'] = _integrationId;
    map['profile_id'] = _profileId;
    map['has_parent_transaction'] = _hasParentTransaction;
    map['order'] = _order;
    map['created_at'] = _createdAt;
    if (_transactionProcessedCallbackResponses != null) {
      map['transaction_processed_callback_responses'] = _transactionProcessedCallbackResponses?.map((v) => v.toJson()).toList();
    }
    map['currency'] = _currency;
    if (_sourceData != null) {
      map['source_data'] = _sourceData?.toJson();
    }
    map['api_source'] = _apiSource;
    map['is_void'] = _isVoid;
    map['is_refund'] = _isRefund;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['is_hidden'] = _isHidden;
    if (_paymentKeyClaims != null) {
      map['payment_key_claims'] = _paymentKeyClaims?.toJson();
    }
    map['error_occured'] = _errorOccured;
    map['is_live'] = _isLive;
    map['other_endpoint_reference'] = _otherEndpointReference;
    map['refunded_amount_cents'] = _refundedAmountCents;
    map['is_captured'] = _isCaptured;
    map['captured_amount'] = _capturedAmount;
    map['merchant_staff_tag'] = _merchantStaffTag;
    map['owner'] = _owner;
    map['parent_transaction'] = _parentTransaction;
    return map;
  }

}

/// currency : "EGP"
/// amount_cents : 100
/// integration_id : 35
/// order : 103
/// user_id : 2

class PaymentKeyClaims {
  PaymentKeyClaims({
      String? currency, 
      num? amountCents, 
      num? integrationId, 
      num? order, 
      num? userId,}){
    _currency = currency;
    _amountCents = amountCents;
    _integrationId = integrationId;
    _order = order;
    _userId = userId;
}

  PaymentKeyClaims.fromJson(dynamic json) {
    _currency = json['currency'];
    _amountCents = json['amount_cents'];
    _integrationId = json['integration_id'];
    _order = json['order'];
    _userId = json['user_id'];
  }
  String? _currency;
  num? _amountCents;
  num? _integrationId;
  num? _order;
  num? _userId;

  String? get currency => _currency;
  num? get amountCents => _amountCents;
  num? get integrationId => _integrationId;
  num? get order => _order;
  num? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currency'] = _currency;
    map['amount_cents'] = _amountCents;
    map['integration_id'] = _integrationId;
    map['order'] = _order;
    map['user_id'] = _userId;
    return map;
  }

}

/// amount : "null"
/// gateway_integration_pk : 35
/// agg_terminal : "null"
/// klass : "CAGGPayment"
/// rrn : "null"
/// due_amount : 100
/// ref : "null"
/// message : "Pending Payment"
/// txn_response_code : "05"
/// biller : "null"
/// bill_reference : 580
/// from_user : null

class Data {
  Data({
      String? amount, 
      num? gatewayIntegrationPk, 
      String? aggTerminal, 
      String? klass, 
      String? rrn, 
      num? dueAmount, 
      String? ref, 
      String? message, 
      String? txnResponseCode, 
      String? biller, 
      num? billReference, 
      dynamic fromUser,}){
    _amount = amount;
    _gatewayIntegrationPk = gatewayIntegrationPk;
    _aggTerminal = aggTerminal;
    _klass = klass;
    _rrn = rrn;
    _dueAmount = dueAmount;
    _ref = ref;
    _message = message;
    _txnResponseCode = txnResponseCode;
    _biller = biller;
    _billReference = billReference;
    _fromUser = fromUser;
}

  Data.fromJson(dynamic json) {
    _amount = json['amount'];
    _gatewayIntegrationPk = json['gateway_integration_pk'];
    _aggTerminal = json['agg_terminal'];
    _klass = json['klass'];
    _rrn = json['rrn'];
    _dueAmount = json['due_amount'];
    _ref = json['ref'];
    _message = json['message'];
    _txnResponseCode = json['txn_response_code'];
    _biller = json['biller'];
    _billReference = json['bill_reference'];
    _fromUser = json['from_user'];
  }
  String? _amount;
  num? _gatewayIntegrationPk;
  String? _aggTerminal;
  String? _klass;
  String? _rrn;
  num? _dueAmount;
  String? _ref;
  String? _message;
  String? _txnResponseCode;
  String? _biller;
  num? _billReference;
  dynamic _fromUser;

  String? get amount => _amount;
  num? get gatewayIntegrationPk => _gatewayIntegrationPk;
  String? get aggTerminal => _aggTerminal;
  String? get klass => _klass;
  String? get rrn => _rrn;
  num? get dueAmount => _dueAmount;
  String? get ref => _ref;
  String? get message => _message;
  String? get txnResponseCode => _txnResponseCode;
  String? get biller => _biller;
  num? get billReference => _billReference;
  dynamic get fromUser => _fromUser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = _amount;
    map['gateway_integration_pk'] = _gatewayIntegrationPk;
    map['agg_terminal'] = _aggTerminal;
    map['klass'] = _klass;
    map['rrn'] = _rrn;
    map['due_amount'] = _dueAmount;
    map['ref'] = _ref;
    map['message'] = _message;
    map['txn_response_code'] = _txnResponseCode;
    map['biller'] = _biller;
    map['bill_reference'] = _billReference;
    map['from_user'] = _fromUser;
    return map;
  }

}

/// pan : ""
/// type : "aggregator"
/// sub_type : "AGGREGATOR"

class SourceData {
  SourceData({
      String? pan, 
      String? type, 
      String? subType,}){
    _pan = pan;
    _type = type;
    _subType = subType;
}

  SourceData.fromJson(dynamic json) {
    _pan = json['pan'];
    _type = json['type'];
    _subType = json['sub_type'];
  }
  String? _pan;
  String? _type;
  String? _subType;

  String? get pan => _pan;
  String? get type => _type;
  String? get subType => _subType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pan'] = _pan;
    map['type'] = _type;
    map['sub_type'] = _subType;
    return map;
  }

}