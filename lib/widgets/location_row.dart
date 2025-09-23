import 'package:boarding_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationRow extends StatelessWidget {
  const LocationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/location.svg', height: 24, width: 24),
          const SizedBox(width: 8),
          Text(
            "ABCD, New Delhi",
            style: GoogleFonts.quicksand(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: AppColors.primaryText,
            ),
          ),
          const SizedBox(width: 8),
          SvgPicture.asset(
            'assets/images/back_button.svg',
            height: 10,
            width: 15,
          ),
        ],
      ),
    );
  }
}
