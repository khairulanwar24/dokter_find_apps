import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 80,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/icon_nexa.png',
              width: 520,
            ),
            SizedBox(
              height: 6,
            ),
            Text('Kesehatan adalah Aset Berharga',
                style: primaryTextStyle.copyWith(
                    fontSize: 15, fontWeight: reguler))
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [header()],
        ),
      ),
    );
  }
}
