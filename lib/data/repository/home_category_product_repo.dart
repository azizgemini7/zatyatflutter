import 'package:flutter/material.dart';
import 'package:zatyatflutter/data/datasource/remote/dio/dio_client.dart';
import 'package:zatyatflutter/data/datasource/remote/exception/api_error_handler.dart';
import 'package:zatyatflutter/data/model/response/base/api_response.dart';
import 'package:zatyatflutter/utill/app_constants.dart';

class HomeCategoryProductRepo {
  final DioClient dioClient;
  HomeCategoryProductRepo({@required this.dioClient});

  Future<ApiResponse> getHomeCategoryProductList() async {
    try {
      final response = await dioClient.get(
        AppConstants.HOME_CATEGORY_PRODUCTS_URI);
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}