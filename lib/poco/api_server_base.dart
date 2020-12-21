import 'package:hypertools/theme/theme.dart';
import 'package:http/http.dart' as http;

import 'errorExceptionResult.dart';
import 'errorExceptionResultBase.dart';
import 'dart:convert';
import 'dart:io';
import 'package:hypertools/poco/stream_helper.dart';

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
      TOutpot Function(Map<String, dynamic> json) toObjectFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.post(urlStr,
          body: json.encode(toJsonFunc()), headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResult<TOutpot>(jsonConverter: toObjectFunc)
            .fromJson(json.decode(response.body));
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      if (!await isConnectedToInternet(streamNotConnected: streamNotConnected))
        return ErrorExceptionResult<TOutpot>(
          isSuccess: false,
          isConnectedToInternet: false,
          errorMessage: 'لطفاَ اتصال اینترنت خود را بررسی کنید',
        );
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<ErrorExceptionResultBase> callApiPostBaseAsync<TInput>(
      String urlStr,
      TInput model,
      Map<String, String> headers,
      Map<String, dynamic> Function() toJsonFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.post(urlStr,
          body: json.encode(toJsonFunc()), headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResultBase().fromJson(json.decode(response.body));
      return ErrorExceptionResultBase(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      if (!await isConnectedToInternet(streamNotConnected: streamNotConnected))
        return ErrorExceptionResultBase(
          isSuccess: false,
          isConnectedToInternet: false,
          errorMessage: 'لطفاَ اتصال اینترنت خود را بررسی کنید',
        );

      return ErrorExceptionResultBase(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<ErrorExceptionResult<TOutpot>> callApiPutAsync<TInput, TOutpot>(
      String urlStr,
      TInput model,
      Map<String, String> headers,
      Map<String, dynamic> Function() toJsonFunc,
      TOutpot Function(Object json) toObjectFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.put(urlStr,
          body: json.encode(toJsonFunc()), headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResult<TOutpot>(jsonConverter: toObjectFunc)
            .fromJson(json.decode(response.body));
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      if (!await isConnectedToInternet(streamNotConnected: streamNotConnected))
        return ErrorExceptionResult<TOutpot>(
          isSuccess: false,
          isConnectedToInternet: false,
          errorMessage: 'لطفاَ اتصال اینترنت خود را بررسی کنید',
        );

      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<ErrorExceptionResult<TOutpot>> callApiGetAsync<TOutpot>(String urlStr,
      Map<String, String> headers, TOutpot Function(Object json) toObjectFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.get(urlStr, headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResult<TOutpot>(jsonConverter: toObjectFunc)
            .fromJson(json.decode(response.body));
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      if (!await isConnectedToInternet(streamNotConnected: streamNotConnected))
        return ErrorExceptionResult<TOutpot>(
          isSuccess: false,
          isConnectedToInternet: false,
          errorMessage: 'لطفاَ اتصال اینترنت خود را بررسی کنید',
        );

      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<TOutpot> callApiGetBaseAsync<TOutpot>(String urlStr,
      Map<String, String> headers, TOutpot Function(Object json) fromJsonFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.get(urlStr, headers: headers);
      if (response.statusCode == 200)
        return fromJsonFunc(json.decode(response.body));
      return null;
    } catch (e) {
      await isConnectedToInternet(streamNotConnected: streamNotConnected);
      print(e);
      return null;
    }
  }

  Future<ErrorExceptionResult<TOutpot>> callApiDeleteAsync<TOutpot>(
      String urlStr,
      Map<String, String> headers,
      TOutpot Function(Object json) toObjectFunc,
      {StreamHelper<String> streamNotConnected}) async {
    try {
      headers["Content-type"] = "application/json; charset=utf-8";
      var response = await http.delete(urlStr, headers: headers);
      if (response.statusCode == 200)
        return ErrorExceptionResult<TOutpot>(jsonConverter: toObjectFunc)
            .fromJson(json.decode(response.body));
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: response.body);
    } catch (e) {
      print(e);
      if (!await isConnectedToInternet(streamNotConnected: streamNotConnected))
        return ErrorExceptionResult<TOutpot>(
          isSuccess: false,
          isConnectedToInternet: false,
          errorMessage: 'لطفاَ اتصال اینترنت خود را بررسی کنید',
        );
      return ErrorExceptionResult<TOutpot>(
          isSuccess: false, errorMessage: e.toString());
    }
  }

  Future<bool> isConnectedToInternet(
      {StreamHelper<String> streamNotConnected}) async {
    streamNotConnected?.changeValue('');
    print('pinging :' + lookupAddressForCheckInternetConnection);
    try {
      if (lookupAddressForCheckInternetConnection == null ||
          lookupAddressForCheckInternetConnection.isEmpty) {
        print('ping cancel');
        return true;
      }
      final result =
          await InternetAddress.lookup(lookupAddressForCheckInternetConnection);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('ping ok');
        return true;
      }
    } on SocketException catch (_) {
      print('not connected to the internet');
    }
    print('ping completed');
    streamNotConnected
        ?.changeValue('لطفاَ اتصال به اینترنت را مجددا بررسی کنید');
    return false;
  }
}
