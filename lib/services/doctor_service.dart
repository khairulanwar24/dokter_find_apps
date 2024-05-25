import 'dart:convert';

import 'package:dokter_find_apps/models/doctors_model.dart';
import 'package:http/http.dart' as http;

class ProductService {
  String baseUrl = 'https://nexacaresys.codeplay.id/api';

  Future<List<DoctorModel>> getDoctor() async {
    var url = Uri.parse('$baseUrl/doctor');

    var headers = {'Content-Type': 'application/json'};
    var responses = await http.post(url, headers: headers);

    print(responses.body);
    if (responses.statusCode == 200) {
      List data = jsonDecode(responses.body);
      List<DoctorModel> doctors = [];

      for (var item in data) {
        doctors.add(DoctorModel.fromJson(item));
      }
      return doctors;
    } else {
      throw Exception('Failed to load doctors');
    }
  }
}
