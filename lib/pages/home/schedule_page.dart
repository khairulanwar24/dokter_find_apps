import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: backgroundColor2,
                ),
                child: Text(
                  'Dibatalkan',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: medium),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(99, 180, 255, 0.1),
                ),
                child: Text(
                  'Jadwal Dokter',
                  style:
                      secondaryStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 32,
                ),
                margin: const EdgeInsets.only(right: 12),
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

    Widget doctorScheduleItem(
        String name, String specialty, String date, String time) {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                      'assets/dr_imron.png'), // Use appropriate image asset
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      specialty,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Image.asset(
                  width: 16,
                  height: 16,
                  'assets/icon_calender.png',
                ),
                const SizedBox(width: 8),
                Text(
                  date,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                ),
                Spacer(),
                Image.asset(
                  width: 16,
                  height: 16,
                  'assets/icon_clock.png',
                ),
                const SizedBox(width: 8),
                Text(
                  time,
                  style: primaryTextStyle.copyWith(
                      fontSize: 14, fontWeight: reguler),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  // action
                },
                style: TextButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(99, 180, 255, 0.1),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  'Detail',
                  style: secondaryStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget listDoctor() {
      return Column(
        children: [
          doctorScheduleItem('Dr. Joseph Brosito', 'Dokter Gigi',
              'Sunday, 12 June', '11:00 - 12:00 AM'),
          doctorScheduleItem('Dr. Bessie Coleman', 'Dokter Gigi',
              'Sunday, 12 June', '11:00 - 12:00 AM'),
          doctorScheduleItem('Dr. Babe Didrikson', 'Dokter Gigi',
              'Sunday, 12 June', '11:00 - 12:00 AM'),
          doctorScheduleItem('Dr. Babe Didrikson', 'Dokter Gigi',
              'Sunday, 12 June', '11:00 - 12:0 AM'),
        ],
      );
    }

    return ListView(
      children: [categories(), listDoctor()],
    );
  }
}
