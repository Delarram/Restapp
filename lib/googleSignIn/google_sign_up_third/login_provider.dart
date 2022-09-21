import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:rest_api/googleSignIn/google_sign_up_third/r_get_ip.dart';
import 'package:http/http.dart' as http;
import '../../resources/string_const.dart';
class LoginProvider extends ChangeNotifier{

  Future loginWithGoogle( accessToken,name,userId,email) async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    late AndroidDeviceInfo androidInfo;
    late IosDeviceInfo iosDeviceInfo;
    if(Platform.isAndroid){
      androidInfo= await deviceInfo.androidInfo;

    }else
    {
      iosDeviceInfo=await deviceInfo.iosInfo;
    }
    String? ipAddress =await RGetIp.internalIP;
    try {
      final loginUrl = '$link' + '/auth/sociallogin';
      final response = await http.post(
        Uri.parse(loginUrl),
        headers: {
          "Accept": "application/json",
          'Content-type': 'application/json',
          'Token': '$publicToken',
        },
        body: json.encode({
          'email': email,
          'oauth_uid':userId,
          'fullname':name,
          'ipaddress': ipAddress,
          'device':Platform.isAndroid? androidInfo.brand.toString():iosDeviceInfo.model.toString(),
          "member_type" : "google",
          "token" : accessToken
        }),
      );
      if (response.statusCode  >=200 && response.statusCode <=300) {
        var data = json.decode(response.body);
        print("My response data");
        print(data);

        return data;
      } else {
        throw 'Failed to load login';
      }
    } on FormatException catch (e) {
      print("FormatException" + e.toString());
      throw "Service link's name is not correct !";
    } on TimeoutException catch (e) {
      print("TimeOutExecption" + e.toString());
      throw "Can not connect right now !";
    } on SocketException catch (e) {
      print("SocketException" + e.toString());
      throw "Can not connect right now.Please try again later !";
    } catch (e) {
      print("Login Error");
      throw e.toString();
    }
  }

}