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

    Widget nearestDoctor() {
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

    return ListView(
      children: [
        header(),
        nearestDoctor(),
        searchDoctorSpecialist(),
        medicalServices()
      ],
    );
  }
}
