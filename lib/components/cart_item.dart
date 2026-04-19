import 'package:e_com_app/models/shoe.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(image: AssetImage(widget.shoe.imagePath)),
      title: Text(widget.shoe.name),
      subtitle: Text("\$${widget.shoe.price}"),
    );
  }
}
