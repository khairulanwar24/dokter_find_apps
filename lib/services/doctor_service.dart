import 'dart:convert';
import 'package:dokter_find_apps/models/doctors_model.dart';
import 'package:http/http.dart' as http;

class DoctorService {
  String baseUrl = 'https://nexacaresys.codeplay.id/api';

  Future<List<DoctorModel>> getDoctors({required String token}) async {
    var url = Uri.parse('$baseUrl/doctors');
    var headers = {
      'Content-Type': 'application/json',
      'token': token, // Send token without 'Bearer'
    };

    var response = await http.get(url, headers: headers);
    print('Headers: $headers');
    print('Response Status: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['response']['data'];
      List<DoctorModel> doctors =
          data.map((item) => DoctorModel.fromJson(item)).toList();
      return doctors;
    } else {
      throw Exception('Failed to load doctors');
    }
  }
}
