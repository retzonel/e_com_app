import 'package:e_com_app/pages/home_page.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image(
                image: AssetImage('lib/images/logo-holo.png'),
                height: 100,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Just Do It!",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 24),
            Text(
              "Welcome to our e-commerce app! Explore a wide range of products, enjoy seamless shopping, and experience the best deals. Happy shopping!",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            Container(
              width: double.infinity,
              height: 100,
              padding: EdgeInsets.all(24),
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  "Shop Now!!!",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
