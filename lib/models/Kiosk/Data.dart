class Data {
  Data({
      this.amount, 
      this.gatewayIntegrationPk, 
      this.aggTerminal, 
      this.klass, 
      this.rrn, 
      this.dueAmount, 
      this.ref, 
      this.message, 
      this.txnResponseCode, 
      this.biller, 
      this.billReference, 
      this.fromUser,});

  Data.fromJson(dynamic json) {
    amount = json['amount'];
    gatewayIntegrationPk = json['gateway_integration_pk'];
    aggTerminal = json['agg_terminal'];
    klass = json['klass'];
    rrn = json['rrn'];
    dueAmount = json['due_amount'];
    ref = json['ref'];
    message = json['message'];
    txnResponseCode = json['txn_response_code'];
    biller = json['biller'];
    billReference = json['bill_reference'];
    fromUser = json['from_user'];
  }
  String amount;
  int gatewayIntegrationPk;
  String aggTerminal;
  String klass;
  String rrn;
  int dueAmount;
  String ref;
  String message;
  String txnResponseCode;
  String biller;
  int billReference;
  dynamic fromUser;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['amount'] = amount;
    map['gateway_integration_pk'] = gatewayIntegrationPk;
    map['agg_terminal'] = aggTerminal;
    map['klass'] = klass;
    map['rrn'] = rrn;
    map['due_amount'] = dueAmount;
    map['ref'] = ref;
    map['message'] = message;
    map['txn_response_code'] = txnResponseCode;
    map['biller'] = biller;
    map['bill_reference'] = billReference;
    map['from_user'] = fromUser;
    return map;
  }

}