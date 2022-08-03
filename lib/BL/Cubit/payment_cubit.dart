import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob/models/Authentication/AuthRequest.dart';
import 'package:paymob/models/Order%20Registration/OredrRegistrationRequest.dart';
import 'package:paymob/network/dio_helper.dart';

import '../../models/Payment Key/PaymentKeyRequest.dart';
import '../../utils/constants.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());

  static PaymentCubit get(context) => BlocProvider.of(context);

  Future getAuthToken() async {
    DioHelper.postData(
            url: "auth/tokens",
            data: AuthRequest(apiKey: paymentApiKey.toString()).toJson())
        .then((value) {
      // debugPrint(value.toString());
      payMobFirstToken = value.data["token"].toString();
      debugPrint("payMobFirstToken = $payMobFirstToken");
      emit(PaymentSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentError(error.toString()));
    });
  }

  Future getOrderID({String? price}) async {
    await getAuthToken();
    await DioHelper.postData(
            url: "ecommerce/orders",
            data: OrderRegistrationRequest(
              authToken: payMobFirstToken.toString(),
              amountCents: price.toString(),
              currency: "EGP",
              deliveryNeeded: "false",
              items: [],
              merchantOrderId: Random().nextInt(99),
            ).toJson())
        .then((value) {
      //debugPrint(value.toString());
      orderID = value.data["id"].toString();
      debugPrint("OrderID = $orderID");
      emit(PaymentOrderIDSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentOrderIDError(error.toString()));
    });
  }

  Future getTokenCard(
      {String? price,
      String? firstName,
      String? lastName,
      String? email,
      String? phone}) async {
    DioHelper.postData(
            url: "acceptance/payment_keys",
            data: PaymentKeyRequest(
              authToken: payMobFirstToken.toString(),
              amountCents: price,
              currency: "EGP",
              integrationId: integrationIdCard,
              orderId: orderID,
              expiration: 3600,
              lockOrderWhenPaid: "false",
              billingData: BillingData(
                  apartment: "NA",
                  email: email,
                  floor: "NA",
                  firstName: firstName,
                  street: "NA",
                  building: "NA",
                  phoneNumber: phone,
                  shippingMethod: "PKG",
                  postalCode: "NA",
                  city: "NA",
                  country: "NA",
                  lastName: lastName,
                  state: "NA"),
            ).toJson())
        .then((value) {
      //debugPrint(value.toString());
      finalTokenCard = value.data["token"].toString();
      debugPrint("FinalTokenCard = $finalTokenCard");
      emit(PaymentTokenCardSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentTokenCardError(error.toString()));
    });
  }

  Future getTokenKiosk(
      {String? price,
      String? firstName,
      String? lastName,
      String? email,
      String? phone}) async {
    DioHelper.postData(
            url: "acceptance/payment_keys",
            data: PaymentKeyRequest(
              authToken: payMobFirstToken.toString(),
              amountCents: price,
              currency: "EGP",
              integrationId: integrationIdKiosk,
              orderId: orderID,
              expiration: 3600,
              lockOrderWhenPaid: "false",
              billingData: BillingData(
                  apartment: "NA",
                  email: email,
                  floor: "NA",
                  firstName: firstName,
                  street: "NA",
                  building: "NA",
                  phoneNumber: phone,
                  shippingMethod: "PKG",
                  postalCode: "NA",
                  city: "NA",
                  country: "NA",
                  lastName: lastName,
                  state: "NA"),
            ).toJson())
        .then((value) {
      //debugPrint(value.toString());
      finalTokenKiosk = value.data["token"].toString();
      debugPrint("FinalTokenKiosk = $finalTokenKiosk");
      emit(PaymentTokenKioskSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentTokenKioskError(error.toString()));
    });
  }

  Future getRefCode(
      {String? price,
      String? firstName,
      String? lastName,
      String? email,
      String? phone}) async {
    await getTokenKiosk(
        price: price,
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone);

    DioHelper.postData(url: "acceptance/payments/pay", data: {
      "source": {"identifier": "AGGREGATOR", "subtype": "AGGREGATOR"},
      "payment_token": finalTokenKiosk
    }).then((value) {
      //debugPrint(value.toString());
      refCode = value.data["id"].toString();
      debugPrint("RefCode = $refCode");
      emit(PaymentRefCodeSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentRefCodeError(error.toString()));
    });
  }
}
