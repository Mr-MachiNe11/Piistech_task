import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:http/http.dart';

class ApiService {
  final String apiUrl = 'https://sales-api.made-in-bd.net/api/v1/login';

  Future<void> login(String username, String password) async {
    try {
      Response response = await http.post(
        Uri.parse(apiUrl),
        body: {
          'Username': username,
          'Password': password,
        },
        headers: {
          "Content-Type": "application/json",
          "Username": "9999",
          "Password": "111111",
          "DeviceToken": "Api",
          "Utc": "+06:00"
        },
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body.toString());
        print('hit');
        print(data['token']);
        return data;

        // Perform any additional actions with data here.
      } else {
        throw Exception('Login failed');
      }
    } catch (e) {
      // Handle exceptions here
      print('Error during login: $e');
    }
  }
}
