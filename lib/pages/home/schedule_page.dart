import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget categories() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(99, 180, 255, 0.1),
                ),
                child: Text(
                  'Dibatalkan',
                  style:
                      secondaryStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor2,
                ),
                child: Text(
                  'Jadwal Dokter',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor2,
                ),
                child: Text(
                  'Semua',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        categories(),
      ],
    );
  }
}
