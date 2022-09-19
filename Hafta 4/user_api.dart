import 'dart:convert';
import 'package:flutter/material.dart';
import "package:staj2/model.dart";
import 'package:http/http.dart' as http;

class UsersApi {
  static Future<List<VeriModel>> getUsers() async {
    final adres = "https://fake-api-for-flutter.herokuapp.com/veri";
    final response = await http.get(Uri.parse(adres));
    final body = json.decode(response.body);

    return body.map<VeriModel>(VeriModel.fromJson).toList();
  }

  static Future<List<VeriModel>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    return body.map<VeriModel>(VeriModel.fromJson).toList();
  }
}
