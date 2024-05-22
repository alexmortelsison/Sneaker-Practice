import 'package:flutter/material.dart';
import 'package:sneaker_practice/components/shoe_tile.dart';
import 'package:sneaker_practice/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({
    super.key,
  });

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Search'), Icon(Icons.search)],
              ),
            ),
          ),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                Shoe shoe = Shoe(
                    name: '1',
                    price: '170',
                    imagePath: 'images/1.png',
                    description: 'Cool shoe');
                return ShoeTile(
                  shoe: shoe,
                  onTap: () {},
                );
              },
            ),
          ),
          const Divider(height: 40),
        ],
      ),
    );
  }
}
