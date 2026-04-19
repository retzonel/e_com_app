import 'package:e_com_app/components/cart_item.dart';
import 'package:e_com_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  var individualShoe = value.getUserCart()[index];

                  return CartItem(shoe: individualShoe,);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
