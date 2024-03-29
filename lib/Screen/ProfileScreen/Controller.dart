import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:greenworms/main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  String name = "";
  TextEditingController currentPass = TextEditingController();
  TextEditingController newPass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

  getdata() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    token = pref.getString('token').toString();
    id = pref.getInt("user_id") ?? 0;
    getProfile();
    update();
  }

  String Phoneno = '';
  String token = "";
  String mailid = "";
  int id = 0;
  String Pass = "";
  String? ProfileImage;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getdata();
  }

  void getProfile() async {
    final Response = await get(
      Uri.parse(baseUrl + "users/$id"),
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );

    if (Response.statusCode == 200) {
      var data = json.decode(Response.body);
      print(data[data]);

      name = data["data"]["name"].toString();
      Phoneno = data["data"]["phone"].toString();
      mailid = data["data"]["email"].toString();
      ProfileImage = data["data"]["profile_image"];
      update();
    }
  }

  void getPass() async {
    final Response = await post(
      Uri.parse(baseUrl + "auth/change-password"),
      body: {
        "current_password": currentPass.text.trim(),
        "new_password": newPass.text.trim(),
        "confirm_password": confirmPass.text.trim()
      },
      headers: {
        'contentType': 'application/json',
        "Authorization": "Bearer $token"
      },
    );
    var cpData = json.decode(Response.body);
    if (Response.statusCode == 201) {
      Get.back();
      Fluttertoast.showToast(
        msg: cpData["message"],
      );

      update();
    } else {
      Fluttertoast.showToast(
        msg: cpData["message"],
      );
    }
  }
}
