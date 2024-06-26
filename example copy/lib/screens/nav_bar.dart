import 'package:example/constants.dart';
import 'package:example/providers/cart_provider.dart';
import 'package:example/providers/favorite_provider.dart';
import 'package:example/screens/cart/cart.dart';
import 'package:example/screens/fav/favorite.dart';
import 'package:example/screens/home/home.dart';
import 'package:example/screens/profile/user_page.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shopping_package/chatbot_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    ChatbotScreen(),
    FavoritesScreen(),
    HomeScreen(),
    CartScreen(),
    About(),
  ];
  @override
  Widget build(BuildContext context) {
    var cartProvider = Provider.of<CartProvider>(context);
    var favProvider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimaryColor,
        foregroundColor: Colors.white,
        child: const Icon(
          Icons.home,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 0;
                });
              },
              icon: Icon(
                Icons.chat_bubble,
                size: 30,
                color: currentIndex == 0 ? kprimaryColor : Colors.grey.shade400,
              ),
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: currentIndex == 1
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
                if (favProvider.favorites.isNotEmpty) // Check if cart has items
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        '${favProvider.favorites.length}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(
              width: 14,
            ),
            Stack(
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: currentIndex == 3
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
                if (cartProvider.cart.isNotEmpty) // Check if cart has items
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      radius: 9,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        '${cartProvider.cart.length}',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  currentIndex = 4;
                });
              },
              icon: Icon(
                Icons.info_outline_rounded,
                size: 30,
                color: currentIndex == 4 ? kprimaryColor : Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: screens[currentIndex],
      ),
    );
  }
}
