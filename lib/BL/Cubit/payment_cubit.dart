import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob/models/Authentication/AuthRequest.dart';
import 'package:paymob/network/dio_helper.dart';

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
      debugPrint(value.toString());
      payMobFirstToken = value.data["token"].toString();
      debugPrint("payMobFirstToken = $payMobFirstToken");
      emit(PaymentSuccess());
    }).onError((error, stackTrace) {
      emit(PaymentError(error.toString()));
    });
  }
}
