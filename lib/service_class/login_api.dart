import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:icon_picker/service_class/login_api.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert';
import '../model/login_model.dart';


class Login_api{
  LoginModel? data;
  Future<LoginModel?> login_info( user, password ) async {
    var response = await http.post(Uri.parse('http://192.168.28.97/iconpicker/login.php'),
    body: jsonEncode( < String, String>{


      "user": user,
      "password": password
        }));
    data =  loginModelFromJson(response.body);
    print(response.body);
    return data;

  }
}