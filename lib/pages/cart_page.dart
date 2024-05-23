import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_practice/components/cart_item.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Container(
        child: ListView.builder(
          itemCount: value.getUserCart().length,
          itemBuilder: (context, index) {
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe: individualShoe);
          },
        ),
      ),
    );
  }
}
