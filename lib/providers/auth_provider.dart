import 'package:dokter_find_apps/models/user_model.dart';
import 'package:dokter_find_apps/services/auth_service.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  late UserModel _user;

  AuthProvider() {
    _user = UserModel(username: '', password: '', token: '');
  }

  UserModel get user => _user;

  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> login({
    required String username,
    required String password,
  }) async {
    try {
      // Lakukan logika autentikasi di sini
      // Misalnya, Anda dapat memanggil layanan autentikasi untuk memeriksa username dan password
      bool isAuthenticated = await AuthService.authenticate(username, password);

      // Jika autentikasi berhasil, set user dan kembalikan true
      if (isAuthenticated) {
        _user = UserModel(username: username, password: password, token: '');
        return true;
      } else {
        // Jika autentikasi gagal, kembalikan false
        return false;
      }
    } catch (e) {
      // Tangani kesalahan jika terjadi
      print('Error during login: $e');
      return false;
    }
  }
}
