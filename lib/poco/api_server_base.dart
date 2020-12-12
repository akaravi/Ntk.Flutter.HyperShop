import 'package:hypertools/theme/theme.dart';
import 'package:http/http.dart' as http;

import 'errorExceptionResult.dart';
import 'errorExceptionResultBase.dart';
import 'dart:convert';

class ApiServerBase extends Object {
  ApiServerBase() {
    baseUrl = baseApiUrl;
  }
  String baseUrl = '';
  String moduleCotrolerUrl = '';
  Map<String, String> baseHeaders = Map<String, String>();

  void setAuthorizationToken(String token, {String deviceToken = ""}) {
    if (deviceToken != null && deviceToken.isNotEmpty)
      baseHeaders['DeviceToken'] = deviceToken;
    else if (token != null && token.isNotEmpty)
      baseHeaders['Authorization'] = token;
  }

  Future<ErrorExceptionResult<TOutpot>> callApiPostAsync<TInput, TOutpot>(
      String urlStr,
      TInput model,
      Map<String, String> headers,
      Map<String, dynamic> Function() toJsonFunc,
      TOutpot Function(Map<String, dynamic> json) toObjectFunc) async {}

  Future<ErrorExceptionResultBase> callApiPostBaseAsync<TInput>(
      String urlStr,
      TInput model,
      Map<String, String> headers,
      Map<String, dynamic> Function() toJsonFunc) async {}

  Future<ErrorExceptionResult<TOutpot>> callApiPutAsync<TInput, TOutpot>(
      String urlStr,
      TInput model,
      Map<String, String> headers,
      Map<String, dynamic> Function() toJsonFunc,
      TOutpot Function(Object json) toObjectFunc) async {}

  Future<ErrorExceptionResult<TOutpot>> callApiGetAsync<TOutpot>(
      String urlStr,
      Map<String, String> headers,
      TOutpot Function(Object json) toObjectFunc) async {
    try {
      var response = await http.get(urlStr, headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResult<TOutpot>(jsonConverter: toObjectFunc)
            .fromJson(json.decode(response.body));
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<TOutpot> callApiGetBaseAsync<TOutpot>(
      String urlStr,
      Map<String, String> headers,
      TOutpot Function(Object json) fromJsonFunc) async {}

  Future<ErrorExceptionResult<TOutpot>> callApiDeleteAsync<TOutpot>(
      String urlStr,
      Map<String, String> headers,
      TOutpot Function(Object json) toObjectFunc) async {}
}
