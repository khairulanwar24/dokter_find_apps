import 'package:flutter/material.dart';
import 'package:dokter_find_apps/themes/theme.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 28,
          backgroundImage: AssetImage('assets/dr_imron.png'),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Budi Santoso',
                style: blackColorStyle.copyWith(
                  fontSize: 18,
                  fontWeight: bold,
                ),
              ),
              Text(
                'Dokter Umum',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: reguler,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/icon_location.png',
              width: 16,
              height: 16,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              '1.2 KM',
              style: primaryTextStyle.copyWith(
                fontSize: 14,
                fontWeight: reguler,
              ),
            )
          ],
        ),
        //
      ],
    );
  }
}
