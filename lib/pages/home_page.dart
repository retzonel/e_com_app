import 'package:e_com_app/pages/cart_page.dart';
import 'package:e_com_app/pages/shop_page.dart';
import 'package:e_com_app/components/my_buttom_nav_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),

      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtomNavBar(
        onTabChange: (index) {
          navigateBottomBar(index);
        },
      ),
      body: pages[_selectedIndex],

      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SizedBox(height: 60),
                Image(
                  image: AssetImage('lib/images/logo-holo.png'),
                  height: 80,
                  color: Colors.white,
                ), //logo

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Divider(color: Colors.grey[800]),
                ),

                //other pages
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ListTile(
                    leading: Icon(Icons.info_rounded, color: Colors.white),
                    title: Text(
                      "About",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25, bottom: 25),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  "Log out",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
