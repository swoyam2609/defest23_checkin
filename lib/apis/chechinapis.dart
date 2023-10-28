import 'dart:convert';

import 'package:http/http.dart' as http;

class Devfestapis {
  static Future<dynamic> checkIn(String uniqueId) async {
    final url = Uri.parse('https://devfest.swoyam.engineer/checkin/$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> lunch(String uniqueId) async {
    final url = Uri.parse('https://devfest.swoyam.engineer/lunch/$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> swag(String uniqueId) async {
    final url = Uri.parse('https://devfest.swoyam.engineer/swag/$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      print(data);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }
}
