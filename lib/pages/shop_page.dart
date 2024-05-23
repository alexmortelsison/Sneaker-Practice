import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_practice/components/shoe_tile.dart';
import 'package:sneaker_practice/models/cart.dart';
import 'package:sneaker_practice/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Successfully added to cart!'),
        content: Text('Check your cart.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Padding(
                padding: EdgeInsets.all(12.0),
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
            Expanded(
              child: ListView.builder(
                itemCount: value.getShoeList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onPressed: () => addShoeToCart(shoe),
                  );
                },
              ),
            ),
            const Divider(height: 40),
          ],
        ),
      ),
    );
  }
}
