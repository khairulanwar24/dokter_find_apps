import 'dart:convert';
import 'package:dokter_find_apps/models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://nexacaresys.codeplay.id/api';

  Future<UserModel> login({
    required String username,
    required String password,
  }) async {
    // Define the endpoint
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};
    print('Headers auth: $headers');

    // Create the request body
    var body = jsonEncode({
      'username': username,
      'password': password,
    });

    var responses = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print('Response status suth: ${responses.statusCode}');
    print('Response Body: ${responses.body}');

    // Cek  status response
    if (responses.statusCode == 200) {
      // Parsing response untuk mendapatkan token
      var data = jsonDecode(responses.body);
      var token = data['response']['token'];
      UserModel user =
          UserModel(username: username, password: password, token: token);
      return user;
    } else {
      throw Exception('Failed to login');
    }
  }

  // static Future<bool> authenticate(String username, String password) async {
  //   try {
  //     // Di sini Anda bisa menuliskan logika autentikasi yang sesuai
  //     // Misalnya, Anda bisa memeriksa kredensial di basis data atau memanggil API untuk verifikasi

  //     // Contoh sederhana: Jika username adalah "admin" dan password adalah "admin123", kembalikan true
  //     if (username == 'admin' && password == 'admin123') {
  //       return true;
  //     } else {
  //       return false;
  //     }
  //   } catch (e) {
  //     // Tangani kesalahan jika terjadi
  //     print('Error during authentication: $e');
  //     return false;
  //   }
  // }
}
