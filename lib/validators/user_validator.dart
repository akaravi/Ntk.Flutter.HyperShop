import 'dart:async';

class UserValidator {
  StreamTransformer<String, String> get validatePhoneNumber =>
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
        if (value == null || value.isEmpty) {
          sink.add(value);
          return;
        }
        String val = r"^(\+\d{1,3}[- ]?)?\d{11}$";
        RegExp reg = RegExp(val);
        if (!reg.hasMatch(value)) {
          sink.addError(
              'لطفاَ شماره موبایل خود را در یازده رقم و صحیح وارد کنید');
        } else {
          sink.add(value);
        }
      });
}

class ProductValidator {
  StreamTransformer<String, String> get validateProductName =>
      StreamTransformer<String, String>.fromHandlers(handleData: (value, sink) {
        if (value == null || value.isEmpty) {
          sink.add(value);
          return;
        }
        if (value.length < 3) {
          sink.addError('لطفاَ حداقل سه حرف از نام کالا را وارد کنید');
        } else {
          sink.add(value);
        }
      });
}
