import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 36,
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

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 58,
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_profile.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Username', hintStyle: primaryTextStyle),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 41,
        ),
        child: Column(
          children: [
            Container(
              height: 56,
              padding: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: backgroundColor2,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icon_profile.png',
                      width: 17,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Password', hintStyle: primaryTextStyle),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              children: [
                header(),
                emailInput(),
                passwordInput(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
