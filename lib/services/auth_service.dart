import 'dart:convert';
import 'package:dokter_find_apps/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://nexacaresys.codeplay.id/api/login';

  Future<UserModel> login({
    required String username,
    required String password,
  }) async {
    // Define the endpoint
    var url = Uri.parse(baseUrl); // Mengonversi URL ke tipe Uri

    // Create the request body
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var response = await http.post(
      url,
      body: body,
    );

    // Cek  status response
    if (response.statusCode == 200) {
      // Parsing response untuk mendapatkan token
      var data = jsonDecode(response.body);
      var token = data['response']['token'];

      // Membuat UserModel dari token
      var user = UserModel(
          token: token, username: 'testeruser', password: 'rekrutnexa24');
      return user;
    } else {
      throw Exception('Failed to login');
    }
  }

  static Future<bool> authenticate(String username, String password) async {
    try {
      // Di sini Anda bisa menuliskan logika autentikasi yang sesuai
      // Misalnya, Anda bisa memeriksa kredensial di basis data atau memanggil API untuk verifikasi

      // Contoh sederhana: Jika username adalah "admin" dan password adalah "admin123", kembalikan true
      if (username == 'admin' && password == 'admin123') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      // Tangani kesalahan jika terjadi
      print('Error during authentication: $e');
      return false;
    }
  }
}
