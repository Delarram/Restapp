import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';


class ToastMessage {
  ToastMessage._();

  static toasttrue(String message) {
    Fluttertoast.showToast(
      gravity: ToastGravity.TOP,
      msg: message.toString(),
      webShowClose: true,
      backgroundColor: Colors.amber,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
    );
  }

  static toastfalse(String message) {
    Fluttertoast.showToast(
      gravity: ToastGravity.TOP,
      msg: message.toString(),
      webShowClose: true,
      backgroundColor: Colors.grey,
      textColor: Colors.white,
      toastLength: Toast.LENGTH_LONG,
    );
  }
}
