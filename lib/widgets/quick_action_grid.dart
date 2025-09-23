import 'package:boarding_app/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickActionItem {
  final String imagePath;
  final String label;
  final String? badgeImagePath;

  QuickActionItem({
    required this.imagePath,
    required this.label,
    this.badgeImagePath,
  });
}

class QuickActionsGrid extends StatelessWidget {
  final List<QuickActionItem> items;

  const QuickActionsGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 16,
          crossAxisSpacing: 12,
          childAspectRatio: 0.6,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Material(
                elevation: 1,
                borderRadius: BorderRadius.circular(12),
                color: AppColors.white,
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Center(
                        child: Image.asset(
                          item.imagePath,
                          width: 45,
                          height: 45,
                        ),
                      ),
                      if (item.badgeImagePath != null)
                        Positioned(
                          right: 0,
                          top: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              item.badgeImagePath!,
                              width: 50,
                              height: 18,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item.label,
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.primaryText,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
