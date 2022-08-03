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
    DioHelper.postData(
            url: "ecommerce/orders",
            data: OrderRegistrationRequest(
              authToken: payMobFirstToken.toString(),
              amountCents: "10000",
              currency: "EGP",
              deliveryNeeded: "false",
              items: [],
              merchantOrderId: Random().nextInt(100),
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
    await getAuthToken();
    await getOrderID(price: price);

    DioHelper.postData(
            url: "ecommerce/orders",
            data: PaymentKeyRequest(
              authToken: payMobFirstToken.toString(),
              amountCents: "10000",
              currency: "EGP",
              integrationId: integrationIdCard,
              orderId: orderID,
              expiration: 3600,
              lockOrderWhenPaid: "false",
              billingData: BillingData(
                  apartment: "803",
                  email: "claudette09@exa.com",
                  floor: "42",
                  firstName: "Clifford",
                  street: "Ethan Land",
                  building: "8028",
                  phoneNumber: "+86(8)9135210487",
                  shippingMethod: "PKG",
                  postalCode: "01898",
                  city: "Jaskolskiburgh",
                  country: "CR",
                  lastName: "Nicolas",
                  state: "Utah"),
            ).toJson())
        .then((value) {
      //debugPrint(value.toString());
      finalTokenCard = value.data["token"].toString();
      debugPrint("FinalTokenCard = $finalTokenCard");
      emit(PaymentOrderIDSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentOrderIDError(error.toString()));
    });
  }
}
