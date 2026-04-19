import 'package:e_com_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Mantis",
      price: "121",
      imagePath: "lib/images/Mantis.jpg",
      description: "Cute and Lemon",
    ),

    Shoe(
      name: "Feugo",
      price: "86",
      imagePath: "lib/images/Fuego.jpg",
      description: "Fiery Red",
    ),

    Shoe(
      name: "VanilaIce",
      price: "325",
      imagePath: "lib/images/VanillaIce.jpg",
      description: "White as Vanila?!",
    ),

    Shoe(
      name: "RPS7225",
      price: "500",
      imagePath: "lib/images/RPS7225.jpg",
      description: "Too futuristic to handle",
    ),
  ];

  //list of items in user carrt
  List<Shoe> userCart = [];

  //get list of soes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get user cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
