import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Utils {
  static void showFloatingSnackBar(String message, BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      dismissDirection: DismissDirection.none,
      duration: const Duration(seconds: 1),
      margin: EdgeInsets.only(
          bottom: (MediaQuery.of(context).size.height / 5),
          left: (MediaQuery.of(context).size.width / 5),
          right: (MediaQuery.of(context).size.width / 5)),
      content: Center(child: Text(message)),
    ));
  }

  static showLoaderDialog(BuildContext context) {
    AlertDialog alert = const AlertDialog(
      elevation: 0,
      content: Center(
        child: CircularProgressIndicator(
          color: Color.fromRGBO(247, 222, 134, 1),
        ),
      ),
      backgroundColor: Colors.transparent,
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(onWillPop: () => Future.value(false), child: alert);
      },
    );
  }






  static Future connectionDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              icon: const Icon(Icons.signal_wifi_off,size: 48,),
              content: const Text(
                "No internet connection. Please check your internet connection and try again.",
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }
  static Future errorDialog(BuildContext context,{String title= "Error" , String subtitle = "Something went wrong. Please try again later."}) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title:  Text(title),
              content:  Text(
                subtitle,
              ),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text(
                    "OK",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ));
  }
}
