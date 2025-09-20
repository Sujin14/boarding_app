import 'package:boarding_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'craze_deals_banner.dart';
import 'location_row.dart';
import 'nearby_stores_list.dart';
import 'quick_action_grid.dart';
import 'refer_earn_card.dart';
import 'top_picks_banner.dart';
import 'trending_section.dart';
import 'view_all_stores_button.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LocationRow(),
              SizedBox(height: 16),
              SearchBarBody(),
              SizedBox(height: 16),
              Text(
                "What would you like to do today?",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 19,
                  color: Color(0XFF323232)
                ),
              ),
              SizedBox(height: 12),
              QuickActionsGrid(
                items: [
                  QuickActionItem(
                    imagePath: 'assets/images/food_delivery.png',
                    label: 'Food Delivery',
                    badgeImagePath: 'assets/images/discounts.png',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/medicines.png',
                    label: 'Medicines',
                    badgeImagePath: 'assets/images/discounts.png',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/pet_supplies.png',
                    label: 'Pet Supplies',
                    badgeImagePath: 'assets/images/discounts.png',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/gifts.png',
                    label: 'Gifts',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/meat.png',
                    label: 'Meat',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/cosmetic.png',
                    label: 'Cosmetic',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/stationary.png',
                    label: 'Stationary',
                  ),
                  QuickActionItem(
                    imagePath: 'assets/images/stores.png',
                    label: 'Stores',
                    badgeImagePath: 'assets/images/discounts.png',
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'More',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      color: Color(0xFF06C25E),
                    ),
                  ),
                  const SizedBox(width: 5),
                  SvgPicture.asset(
                    'assets/images/back_button.svg',
                    height: 8,
                    width: 15,
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Top Picks for you',
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700,
                  fontSize: 17,
                  color: Color(0XFF323232),
                ),
              ),
              SizedBox(height: 16),
              TopPicksBanner(),
              SizedBox(height: 16),
              TrendingSection(),
              SizedBox(height: 16),
              CrazeDealsBanner(),
              SizedBox(height: 16),
              ReferEarnCard(),
              SizedBox(height: 16),
              NearbyStoresList(),
              SizedBox(height: 16),
              ViewAllStoresButton(),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
        selectedItemColor: Color(0xFF29D177),
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home.svg',
              height: 24,
              width: 24,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/cart.svg',
              height: 24,
              width: 24,
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/my_orders.svg',
              height: 24,
              width: 24,
            ),
            label: "My Order",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/account.svg',
              height: 24,
              width: 24,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
