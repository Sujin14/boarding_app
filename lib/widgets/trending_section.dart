import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final cardWidth = (screenWidth / 1.5);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending",
                style: GoogleFonts.quicksand(
                  color: Color(0XFF323232),
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "See all",
                style: GoogleFonts.quicksand(
                  color: Color(0XFF06C25E),
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 200,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: cardWidth,
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12),
                        ),
                        child: Image.asset(
                          "assets/images/ice_cream2.png",
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Mithas Bhandar",
                              style: GoogleFonts.quicksand(color: Color(0XFF323232), fontSize: 17, fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Sweets • North Indian",
                              style: GoogleFonts.quicksand(color: Color(0XFF474747), fontSize: 12, fontWeight: FontWeight.w500),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "(Store location) | 6.4 kms",
                                    style: GoogleFonts.quicksand(color: Color(0XFF474747), fontSize: 12, fontWeight: FontWeight.w500),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, size: 14, color: Color(0xFF474747)),
                                SizedBox(width: 3),
                                Text("4.1", style: GoogleFonts.poppins(color: Color(0XFF474747), fontSize: 14, fontWeight: FontWeight.w500)),
                                SizedBox(width: 8),
                                Text('|'),
                                SizedBox(width: 8),
                                Text("45 mins", style: GoogleFonts.poppins(color: Color(0XFF474747), fontSize: 14, fontWeight: FontWeight.w500),),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
