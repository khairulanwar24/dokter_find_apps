import 'dart:convert';
import 'package:dokter_find_apps/models/doctors_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class DoctorProvider with ChangeNotifier {
  List<DoctorModel> _doctors = [];

  List<DoctorModel> get doctors => _doctors;

  Future<void> getDoctors() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    if (token == null) {
      throw Exception('Token not found');
    }

    var url = Uri.parse(
        'https://nexacaresys.codeplay.id/api/doctor'); // URL sesuai dokumentasi
    var headers = {
      'Content-Type': 'application/json',
      'token': token, // Header token sesuai dokumentasi
    };

    print('URL: $url'); // Logging URL
    print('Headers: $headers'); // Logging Headers

    var response = await http.post(
      url,
      headers: headers,
    );

    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['response']['data'];
      _doctors = List<DoctorModel>.from(
          data.map((item) => DoctorModel.fromJson(item)));
      notifyListeners();
    } else {
      throw Exception('Failed to load doctors');
    }
  }
}
