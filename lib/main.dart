import 'package:dokter_find_apps/pages/home/main_page.dart';
import 'package:dokter_find_apps/pages/login_page.dart';
import 'package:dokter_find_apps/pages/splash_page.dart';
import 'package:dokter_find_apps/providers/auth_provider.dart';
import 'package:dokter_find_apps/providers/doctors_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => DoctorProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/login': (context) => const LoginPage(),
          '/home': (context) => const MainPage()
        },
      ),
    );
  }
}
