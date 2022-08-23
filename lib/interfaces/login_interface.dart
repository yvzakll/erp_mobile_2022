import '../models/user_model.dart';
import 'package:dio/dio.dart';

abstract class ILogin {
  Future<UserModel?> login(
      userNameController, passwordController, companyController) async {
    // ? UzerModel
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

    response = await dio.post(api, data: data);
    if (response.statusCode == 200) {
      final body = response.data;
      // return UserModel(email: email, token: body['token']);
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
