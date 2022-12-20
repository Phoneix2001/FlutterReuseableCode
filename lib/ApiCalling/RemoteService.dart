import 'package:flutter/material.dart';
import 'package:flutterpractive1/data_class/all_department.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../data_class/all_custodian.dart';

const baseURL = "https://keprapibeta-gn.hcamgt.com";

class RemoteService {
  Future<List<AllCustodians>?> getPosts(String api, String token) async {
    var client = http.Client();
    debugPrint("${baseURL + api}");
    var url = Uri.parse(baseURL + api);
    var _headers = {'Authorization': 'Bearer $token'};
    var response = await client.get(url, headers: _headers);
    if (response.statusCode == 200) {

      return allCustodiansFromJson(response.body);
    }
  }
}
