import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  color: Color(0xFF969696),
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
                fillColor: const Color.fromARGB(255, 231, 229, 229),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          SvgPicture.asset(
            'assets/images/notifications.svg',
            height: 24,
            width: 24,
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
