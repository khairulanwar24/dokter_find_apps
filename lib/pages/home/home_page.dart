import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: reguler),
                  ),
                  Text(
                    'Dimas Oxva',
                    style: blackColorStyle.copyWith(
                        fontSize: 20, fontWeight: bold),
                  ),
                ],
              ),
            ),
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/user_profile.png',
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget generalDoctor() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 20,
        ),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Color(0xFF63B4FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/dr_imron.png'),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dr. Imran Syahir',
                        style: whiteColorStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Dokter Umum',
                        style: whiteColorStyle.copyWith(
                          fontSize: 14,
                          fontWeight: reguler,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 16),
            Divider(
              color: Colors.white.withOpacity(0.5),
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset(
                  width: 16,
                  height: 16,
                  'assets/icon_calenderincard.png',
                ),
                SizedBox(width: 8),
                Text(
                  'Sunday, 12 June',
                  style: whiteColorStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                Spacer(),
                Image.asset(
                  width: 16,
                  height: 16,
                  'assets/icon_clockincard.png',
                ),
                SizedBox(width: 8),
                Text(
                  '11:00 - 12:00 AM',
                  style: whiteColorStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget searchDoctorSpecialist() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: defaultMargin,
          right: defaultMargin,
        ),
        padding: EdgeInsets.all(
          16.5,
        ),
        decoration: BoxDecoration(
          color: backgroundColor2,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(
              width: 24,
              height: 24,
              'assets/icon_search.png',
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Cari Dokter Spesialis',
                  hintStyle: primaryTextStyle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget medicalServices() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: backgroundColor2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Image.asset(
                        width: 24,
                        'assets/icon_doctor_add.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Dokter',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: reguler),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: backgroundColor2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Image.asset(
                        width: 24,
                        'assets/icon_drugs_prescriptions.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Obat & Resep',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: reguler),
                )
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: backgroundColor2,
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Image.asset(
                        width: 24,
                        'assets/icon_hospital.png',
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Rumah Sakit',
                  style: primaryTextStyle.copyWith(
                      fontSize: 15, fontWeight: reguler),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget nearestDoctorTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: 32,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Dokter Terdekat',
          style: blackColorStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget nearestDoctor() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: 16,
        ),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/dr_imron.png'),
                ),
                SizedBox(width: 12),
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
                        width: 16, height: 16, 'assets/icon_location.png'),
                    SizedBox(
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
              ],
            ),
            SizedBox(height: 16),
            Divider(
              color: bgColor3.withOpacity(0.5),
              thickness: 1,
            ),
            Row(
              children: [
                Image.asset(
                  width: 16,
                  height: 16,
                  'assets/icon_clock.png',
                  color: orangeColor,
                ),
                SizedBox(width: 8),
                Text(
                  '4.8 (120 Reviews)',
                  style: orangeColorStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
                Spacer(),
                Image.asset(
                  width: 16,
                  height: 16,
                  color: primaryColor,
                  'assets/icon_clock.png',
                ),
                SizedBox(width: 8),
                Text(
                  'Open at 17.00',
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: reguler,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        generalDoctor(),
        searchDoctorSpecialist(),
        medicalServices(),
        nearestDoctorTitle(),
        nearestDoctor(),
      ],
    );
  }
}
