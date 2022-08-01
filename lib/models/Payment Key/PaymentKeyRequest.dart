import 'BillingData.dart';

class PaymentKeyRequest {
  PaymentKeyRequest({
      this.authToken, 
      this.amountCents, 
      this.expiration, 
      this.orderId, 
      this.billingData, 
      this.currency, 
      this.integrationId, 
      this.lockOrderWhenPaid,});

  PaymentKeyRequest.fromJson(dynamic json) {
    authToken = json['auth_token'];
    amountCents = json['amount_cents'];
    expiration = json['expiration'];
    orderId = json['order_id'];
    billingData = json['billing_data'] != null ? BillingData.fromJson(json['billing_data']) : null;
    currency = json['currency'];
    integrationId = json['integration_id'];
    lockOrderWhenPaid = json['lock_order_when_paid'];
  }
  String authToken;
  String amountCents;
  int expiration;
  String orderId;
  BillingData billingData;
  String currency;
  int integrationId;
  String lockOrderWhenPaid;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = authToken;
    map['amount_cents'] = amountCents;
    map['expiration'] = expiration;
    map['order_id'] = orderId;
    if (billingData != null) {
      map['billing_data'] = billingData.toJson();
    }
    map['currency'] = currency;
    map['integration_id'] = integrationId;
    map['lock_order_when_paid'] = lockOrderWhenPaid;
    return map;
  }

}