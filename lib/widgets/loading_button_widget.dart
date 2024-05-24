import 'package:dokter_find_apps/themes/theme.dart';
import 'package:flutter/material.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 195,
      margin: const EdgeInsets.only(
        top: 50,
      ),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 16,
              height: 16,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation(
                  whiteColor,
                ),
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Text(
              'Loading ...',
              style: whiteColorStyle.copyWith(
                fontSize: 18,
                fontWeight: reguler,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
