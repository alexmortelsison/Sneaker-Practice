import 'package:flutter/material.dart';
import 'package:sneaker_practice/constants.dart';

import '../components/my_button_nav_bar.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyButtonNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  DrawerHeader(
                    child: Image.asset('images/logo.png', color: Colors.white),
                  ),
                  const ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text('Home', style: TextStyle(color: Colors.white)),
                  ),
                  const ListTile(
                    leading: Icon(Icons.info, color: Colors.white),
                    title: Text('About', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text('Log Out', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        }),
      ),
    );
  }
}
