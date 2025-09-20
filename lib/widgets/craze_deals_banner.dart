import 'package:boarding_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CrazeDealsBanner extends StatelessWidget {
  const CrazeDealsBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Craze deals',
            style: GoogleFonts.quicksand(
              color: AppColors.primaryText,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.bannerDarkBg,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  right: -10,
                  bottom: 0,
                  child: Image.asset(
                    'assets/images/vegetables.png',
                    width: 180,
                    height: 140,
                    fit: BoxFit.contain,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Customer favourite",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.referText,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Top supermarkets",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: AppColors.referText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Explore",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: AppColors.timeOrange,
                          ),
                        ),
                        SizedBox(width: 5),
                        Image.asset('assets/images/arrow_front.png'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}