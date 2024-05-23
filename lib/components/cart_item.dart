import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(widget.shoe.imagePath),
            title: Text(widget.shoe.name),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => removeItemFromCart(widget.shoe),
            ),
          ),
        ],
      ),
    );
  }
}
