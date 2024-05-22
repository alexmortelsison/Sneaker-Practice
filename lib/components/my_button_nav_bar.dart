import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const MyButtonNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return GNav(
      onTabChange: onTabChange,
      tabBorderRadius: 12,
      mainAxisAlignment: MainAxisAlignment.center,
      tabBackgroundColor: Colors.white,
      tabs: const [
        GButton(
          icon: Icons.home,
        ),
        GButton(icon: Icons.shopping_bag_rounded),
      ],
    );
  }
}
