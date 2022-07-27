// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.id,
    this.name,
    this.phone,
    required this.userName,
    required this.password,
  });

  String? id;
  String? name;
  String? phone;
  String userName;
  String password;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    id: json["id"],
    name: json["name"],
    phone: json["phone"],
    userName: json["user_name"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "phone": phone,
    "user_name": userName,
    "password": password,
  };
}
