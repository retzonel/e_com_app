import 'package:e_com_app/components/shoe_tile.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search for shoes",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              filled: true,
              fillColor: Colors.white,
              prefixIcon: Icon(Icons.search),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Text(
            "...every one flies, some fly longer than others",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                "See all",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10),

        //hot picks
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ShoeTile();
            },
          ),
        ),
      ],
    );
  }
}
