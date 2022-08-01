class PaymentKeyClaims {
  PaymentKeyClaims({
      this.currency, 
      this.amountCents, 
      this.integrationId, 
      this.order, 
      this.userId,});

  PaymentKeyClaims.fromJson(dynamic json) {
    currency = json['currency'];
    amountCents = json['amount_cents'];
    integrationId = json['integration_id'];
    order = json['order'];
    userId = json['user_id'];
  }
  String currency;
  int amountCents;
  int integrationId;
  int order;
  int userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currency'] = currency;
    map['amount_cents'] = amountCents;
    map['integration_id'] = integrationId;
    map['order'] = order;
    map['user_id'] = userId;
    return map;
  }

}