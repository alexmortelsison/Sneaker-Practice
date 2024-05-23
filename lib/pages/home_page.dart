import 'package:flutter/material.dart';
import 'package:sneaker_practice/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  DrawerHeader(
                    child: Image.asset(
                      'images/logo.png',
                      color: Colors.white,
                    ),
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
              const Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: ListTile(
                  leading: Icon(Icons.exit_to_app, color: Colors.white),
                  title: Text('Log Out', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
