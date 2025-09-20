import 'package:boarding_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllStoresButton extends StatelessWidget {
  const ViewAllStoresButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: AppColors.primaryGreen,
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        ),
        child: Text(
          "View all stores",
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.whiteText,
          ),
        ),
      ),
    );
  }
}
