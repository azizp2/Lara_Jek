import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lara_jek/core/constant/constant.dart';
import 'package:lara_jek/core/helper/shared_preferences_helper.dart';

class AppInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers['accept'] = 'application/json';
    final String? authToken =
        await SharedPreferencesHelper.getString(PREF_AUTH);
    if (authToken != null) options.headers['Authorization'] = authToken;
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != HttpStatus.ok &&
        response.statusCode != HttpStatus.created) {
      return handler.resolve(Response(
          requestOptions: response.requestOptions, data: response.data));
    }
    super.onResponse(response, handler);
  }
}
