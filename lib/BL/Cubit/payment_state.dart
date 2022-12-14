part of 'payment_cubit.dart';

abstract class PaymentState {
  const PaymentState();
}

class PaymentInitial extends PaymentState {}

class PaymentSuccess extends PaymentState {}

class PaymentError extends PaymentState {
  String error;
  PaymentError(this.error);
}

class PaymentOrderIDInitial extends PaymentState {}

class PaymentOrderIDSuccess extends PaymentState {}

class PaymentOrderIDError extends PaymentState {
  String error;
  PaymentOrderIDError(this.error);
}

class PaymentTokenCardInitial extends PaymentState {}

class PaymentTokenCardSuccess extends PaymentState {}

class PaymentTokenCardError extends PaymentState {
  String error;
  PaymentTokenCardError(this.error);
}


class PaymentTokenKioskInitial extends PaymentState {}

class PaymentTokenKioskSuccess extends PaymentState {}

class PaymentTokenKioskError extends PaymentState {
  String error;
  PaymentTokenKioskError(this.error);
}

class PaymentRefCodeInitial extends PaymentState {}

class PaymentRefCodeSuccess extends PaymentState {}

class PaymentRefCodeError extends PaymentState {
  String error;
  PaymentRefCodeError(this.error);
}