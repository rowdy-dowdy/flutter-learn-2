import 'dart:convert';
import 'package:mobile/utils/config.dart';
import 'package:http/http.dart' as http;
import 'package:mobile/models/User.dart';

Future loginAPI({email, password}) async {
  try {
    Map<String, String> headers = {
      'Content-type': 'application/json',
      // 'Authorization': 'Bearer $jwt'
    };

    var response = await http.post(
      Uri.parse('$webHost/api/auth/local'),
      body: {
        "identifier": "$email",
        "password": "$password"
      },
      // headers: headers
    );

    Map jsonData = jsonDecode(response.body);

    if (await jsonData['error'] != null) {
      return null;
    }

    return User.fromJson(jsonData['user']);
  }
  catch (e) {
    return null;
  }
}
