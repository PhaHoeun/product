import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:product/module/brand/screen/brand_screen.dart';
import 'package:product/module/cart/screen/cart_screen.dart';
import 'package:product/module/favorite/screen/favorite_screen.dart';
import 'package:product/module/home/screen/home.dart';
import 'package:product/module/profile/screen/profile_screen.dart';

// ignore: must_be_immutable
class BottomNavigatoinBarScreen extends StatefulWidget {
  const BottomNavigatoinBarScreen({super.key});

  @override
  State<BottomNavigatoinBarScreen> createState() =>
      _BottomNavigatoinBarScreenState();
}

class _BottomNavigatoinBarScreenState extends State<BottomNavigatoinBarScreen> {
  List<Widget> items = [
    const Icon(Icons.add_shopping_cart),
    const Icon(Icons.favorite),
    const Icon(Icons.home),
    const Icon(Icons.local_mall),
    const Icon(Icons.account_circle),
  ];

  List screen = [
    const CartScreen(),
    const FavoriteScreen(),
    const HomePage(),
    const BrandScreen(),
    const ProfileScreen(),
  ];

  int index = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan,
      child: SafeArea(
        top: false,
        child: ClipRect(
          child: Scaffold(
            extendBody: true,
            body: screen[index],
            bottomNavigationBar: Theme(
              data: ThemeData(
                iconTheme: const IconThemeData(
                  color: Colors.white,
                ),
              ),
              child: CurvedNavigationBar(
                height: 60,
                buttonBackgroundColor: Colors.indigoAccent,
                color: Colors.cyan,
                backgroundColor: Colors.transparent,
                index: index,
                items: items,
                onTap: (currentIndex) => setState(() => index = currentIndex),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
