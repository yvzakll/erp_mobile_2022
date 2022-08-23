import 'package:dio/dio.dart';
import 'package:erp_mobile_new/interfaces/login_interface.dart';
import 'package:erp_mobile_new/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class LoginService extends ILogin {
  @override
  Future<UserModel?> login(
      userNameController, passwordController, companyController) async {
    final api = 'http://api.erpgold.net/api/token';
    final data = {
      "username": userNameController,
      "password": passwordController,
      "companyCode": companyController,
      "grant_type": "password",
      "platform": "webapi"
    };
    Map<String, String> requestHeaders = {
      'Content-type': 'application/x-www-form-urlencoded',
      'Accept': 'application/json'
    };
    final dio = Dio();
    Response response;

    response = await dio.post(api,
        data: data, options: Options(headers: requestHeaders));
    if (response.statusCode == 200) {
      final body = response.data;
      if (response.data["access_token"] != null) {
        print("geldim");
      } else {
        print("Başarızı Deneme");
      }

      debugPrint(response.data.toString());
      return UserModel(
          userNameController: userNameController,
          passwordController: passwordController,
          companyController: companyController,
          token: body['token']);
    } else {
      return null;
    }
  }
}
