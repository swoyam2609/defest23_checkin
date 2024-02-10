import 'dart:convert';

import 'package:http/http.dart' as http;

class Devfestapis {
  static Future<dynamic> checkInDay0(String uniqueId) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/checkin/day0?qr=$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> checkInDay1(String uniqueId) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/checkin/day1?qr=$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> checkInDay2(String uniqueId) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/checkin/day2?qr=$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> checkInDay3(String uniqueId) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/checkin/day3?qr=$uniqueId');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> sellAll(String uniqueId, String name, String email,
      String phone, String comments) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/sell/allDay?qr=$uniqueId&name=$name&email=$email&phone=$phone&comments=$comments');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> sellDay0(String uniqueId, String name, String email,
      String phone, String comments) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/sell/day0?qr=$uniqueId&name=$name&email=$email&phone=$phone&comments=$comments');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> sellDay1(String uniqueId, String name, String email,
      String phone, String comments) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/sell/day1?qr=$uniqueId&name=$name&email=$email&phone=$phone&comments=$comments');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> sellDay2(String uniqueId, String name, String email,
      String phone, String comments) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/sell/day2?qr=$uniqueId&name=$name&email=$email&phone=$phone&comments=$comments');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }

  static Future<dynamic> sellDay3(String uniqueId, String name, String email,
      String phone, String comments) async {
    final url = Uri.parse(
        'https://advaita24.swoyam.engineer/sell/day3?qr=$uniqueId&name=$name&email=$email&phone=$phone&comments=$comments');
    final response = await http.put(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      return data;
    } else if (response.statusCode == 201) {
      return false;
    } else {
      throw Exception('Failed to check in');
    }
  }
}
