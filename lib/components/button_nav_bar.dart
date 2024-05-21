import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sneaker_practice/constants.dart';

class ButtonNavBar extends StatelessWidget {
  final Function(int)? onTabChange;
  const ButtonNavBar({
    super.key,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        tabBorderRadius: 16,
        tabBackgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: onTabChange,
        tabs: const [
          GButton(
            icon: Icons.home,
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
          ),
        ],
      ),
    );
  }
}
