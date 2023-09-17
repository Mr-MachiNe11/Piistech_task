import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiResponse {
  final String? token;
  final String? expiresIn;
  final String? validTo;
  final String? error;

  ApiResponse({this.token, this.expiresIn, this.validTo, this.error});

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      token: json['result']['token'],
      expiresIn: json['result']['expires_in'],
      validTo: json['result']['validTo'],
      error: json['error'],
    );
  }
}

class ApiIntegration {
  Future<ApiResponse> login(String userName, String password) async {
    try {
      final response = await http.post(
        Uri.parse('https://sales-api.made-in-bd.net/api/v1/login'),
        body: {
          "Username": userName,
          "Password": password,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body.toString());
        return ApiResponse.fromJson(jsonResponse);
      } else {
        throw Exception('Failed to login');
      }
    } catch (e) {
      throw Exception('Failed to login: $e');
    }
  }
}
