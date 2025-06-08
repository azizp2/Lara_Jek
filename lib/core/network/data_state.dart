import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lara_jek/core/network/base_response.dart';
import 'package:retrofit/retrofit.dart';

class DataState<T> extends BaseResponse {
  final T? data;

  DataState({required super.success, required super.message, this.data});

  factory DataState.fromJson(Map<String, dynamic> json) => DataState(
      success: json['success'],
      message: json['message'] ?? '',
      data: json['data']);
}

class SuccessState<T> extends DataState<T> {
  SuccessState({T? data, String message = 'Sukses'})
      : super(success: true, message: message, data: data);
}

class ErrorState<T> extends DataState<T> {
  ErrorState(String message) : super(success: false, message: message);

  factory ErrorState.fromJson(Map<String, dynamic> json) =>
      ErrorState(json['message']);
}

Future<DataState<T>> handleResponse<T>(
    Future<HttpResponse<DataState>> Function() apiCall,
    Future<T> Function(dynamic) mapDataSuccess) async {
  try {
    final HttpResponse<DataState> httpResponse = await apiCall();
    if (httpResponse.response.statusCode == HttpStatus.ok ||
        httpResponse.response.statusCode == HttpStatus.created) {
      final response = httpResponse.data;
      if (response.success) {
        final mappedData = await mapDataSuccess(response.data);
        return SuccessState(
          data: mappedData,
          message: response.message,
        );
      } else {
        return ErrorState(response.message);
      }
    } else {
      return ErrorState(
          '${httpResponse.response.statusCode} : ${httpResponse.response.statusMessage}');
    }
  } on DioException catch (e) {
    try {
      final response = ErrorState.fromJson(jsonDecode(e.response.toString()));
      return ErrorState('${e.response?.statusCode ?? ''} ${response.message}');
    } catch (e1) {
      return ErrorState(
          '${e.response?.statusCode ?? HttpStatus.badRequest} ${e.message ?? e.error ?? ''}');
    }
  } catch (e) {
    return ErrorState(e.toString());
  }
}
