import 'package:boarding_app/constants/app_colors.dart';
import 'package:boarding_app/providers/notification_provider.dart';
import 'package:boarding_app/screens/notifications_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchBarBody extends StatelessWidget {
  const SearchBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for products/stores",
                hintStyle: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.hintText,
                ),
                filled: true,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    'assets/images/search.svg',
                    height: 20,
                    width: 20,
                  ),
                ),
                fillColor: AppColors.searchFill,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChangeNotifierProvider.value(
                    value: Provider.of<NotificationProvider>(
                      context,
                      listen: false,
                    ),
                    child: const NotificationsScreen(),
                  ),
                ),
              );
            },
            icon: SvgPicture.asset(
              'assets/images/notifications.svg',
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            'assets/images/discount_tag.svg',
            height: 24,
            width: 24,
          ),
        ],
      ),
    );
  }
}
