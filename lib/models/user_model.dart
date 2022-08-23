import 'package:flutter/material.dart';

class UserModel {
  final String userNameController;
  final String passwordController;
  final String companyController;
  final String token;

  UserModel(
      {required this.userNameController,
      required this.passwordController,
      required this.companyController,
      required this.token});
}
