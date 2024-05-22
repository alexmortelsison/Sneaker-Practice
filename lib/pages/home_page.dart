import 'package:flutter/material.dart';
import 'package:sneaker_practice/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    title: Text(
                      'About',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
    );
  }
}
