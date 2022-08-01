import 'SourceData.dart';
import 'Data.dart';
import 'PaymentKeyClaims.dart';

class KioskResponse {
  KioskResponse({
      this.id, 
      this.pending, 
      this.amountCents, 
      this.success, 
      this.isAuth, 
      this.isCapture, 
      this.isStandalonePayment, 
      this.isVoided, 
      this.isRefunded, 
      this.is3dSecure, 
      this.integrationId, 
      this.profileId, 
      this.hasParentTransaction, 
      this.order, 
      this.createdAt, 
      this.transactionProcessedCallbackResponses, 
      this.currency, 
      this.sourceData, 
      this.apiSource, 
      this.isVoid, 
      this.isRefund, 
      this.data, 
      this.isHidden, 
      this.paymentKeyClaims, 
      this.errorOccured, 
      this.isLive, 
      this.otherEndpointReference, 
      this.refundedAmountCents, 
      this.isCaptured, 
      this.capturedAmount, 
      this.merchantStaffTag, 
      this.owner, 
      this.parentTransaction,});

  KioskResponse.fromJson(dynamic json) {
    id = json['id'];
    pending = json['pending'];
    amountCents = json['amount_cents'];
    success = json['success'];
    isAuth = json['is_auth'];
    isCapture = json['is_capture'];
    isStandalonePayment = json['is_standalone_payment'];
    isVoided = json['is_voided'];
    isRefunded = json['is_refunded'];
    is3dSecure = json['is_3d_secure'];
    integrationId = json['integration_id'];
    profileId = json['profile_id'];
    hasParentTransaction = json['has_parent_transaction'];
    order = json['order'];
    createdAt = json['created_at'];
    if (json['transaction_processed_callback_responses'] != null) {
      transactionProcessedCallbackResponses = [];
      json['transaction_processed_callback_responses'].forEach((v) {
        transactionProcessedCallbackResponses.add(Dynamic.fromJson(v));
      });
    }
    currency = json['currency'];
    sourceData = json['source_data'] != null ? SourceData.fromJson(json['source_data']) : null;
    apiSource = json['api_source'];
    isVoid = json['is_void'];
    isRefund = json['is_refund'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    isHidden = json['is_hidden'];
    paymentKeyClaims = json['payment_key_claims'] != null ? PaymentKeyClaims.fromJson(json['payment_key_claims']) : null;
    errorOccured = json['error_occured'];
    isLive = json['is_live'];
    otherEndpointReference = json['other_endpoint_reference'];
    refundedAmountCents = json['refunded_amount_cents'];
    isCaptured = json['is_captured'];
    capturedAmount = json['captured_amount'];
    merchantStaffTag = json['merchant_staff_tag'];
    owner = json['owner'];
    parentTransaction = json['parent_transaction'];
  }
  int id;
  String pending;
  int amountCents;
  String success;
  String isAuth;
  String isCapture;
  String isStandalonePayment;
  String isVoided;
  String isRefunded;
  String is3dSecure;
  int integrationId;
  int profileId;
  String hasParentTransaction;
  int order;
  String createdAt;
  List<dynamic> transactionProcessedCallbackResponses;
  String currency;
  SourceData sourceData;
  String apiSource;
  String isVoid;
  String isRefund;
  Data data;
  String isHidden;
  PaymentKeyClaims paymentKeyClaims;
  String errorOccured;
  String isLive;
  String otherEndpointReference;
  int refundedAmountCents;
  String isCaptured;
  int capturedAmount;
  String merchantStaffTag;
  int owner;
  dynamic parentTransaction;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pending'] = pending;
    map['amount_cents'] = amountCents;
    map['success'] = success;
    map['is_auth'] = isAuth;
    map['is_capture'] = isCapture;
    map['is_standalone_payment'] = isStandalonePayment;
    map['is_voided'] = isVoided;
    map['is_refunded'] = isRefunded;
    map['is_3d_secure'] = is3dSecure;
    map['integration_id'] = integrationId;
    map['profile_id'] = profileId;
    map['has_parent_transaction'] = hasParentTransaction;
    map['order'] = order;
    map['created_at'] = createdAt;
    if (transactionProcessedCallbackResponses != null) {
      map['transaction_processed_callback_responses'] = transactionProcessedCallbackResponses.map((v) => v.toJson()).toList();
    }
    map['currency'] = currency;
    if (sourceData != null) {
      map['source_data'] = sourceData.toJson();
    }
    map['api_source'] = apiSource;
    map['is_void'] = isVoid;
    map['is_refund'] = isRefund;
    if (data != null) {
      map['data'] = data.toJson();
    }
    map['is_hidden'] = isHidden;
    if (paymentKeyClaims != null) {
      map['payment_key_claims'] = paymentKeyClaims.toJson();
    }
    map['error_occured'] = errorOccured;
    map['is_live'] = isLive;
    map['other_endpoint_reference'] = otherEndpointReference;
    map['refunded_amount_cents'] = refundedAmountCents;
    map['is_captured'] = isCaptured;
    map['captured_amount'] = capturedAmount;
    map['merchant_staff_tag'] = merchantStaffTag;
    map['owner'] = owner;
    map['parent_transaction'] = parentTransaction;
    return map;
  }

}