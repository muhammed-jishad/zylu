import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:zylu/api/api_repository.dart';
import 'package:zylu/core/const.dart';
import 'package:zylu/model/employee.dart';

class ApiProvider {
  final String url = api;
Future<dynamic> getemployee() async {
    try {
      http.Response res = await http.get(Uri.parse("${url}employees"));

      if (res.statusCode == 200) {
        var resp = employees.fromJson(json.decode(res.body));
        return resp;
      } else {
        throw "Unable to retrieve data.";
      }
    } on NetworkError {
      //
    } catch (e) {
      //
    }
  }
  
}
