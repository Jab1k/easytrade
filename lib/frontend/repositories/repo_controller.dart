import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class MainRepo extends GetxController {
  getAlldata() async {
    try {
      var res = await http.get(Uri.parse('http://169.254.25.165'));
      print(jsonDecode(res.body));
    } catch (e) {
      print(e);
    }
  }
}
