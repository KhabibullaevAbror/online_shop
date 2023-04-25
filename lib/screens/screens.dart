import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:online_shop/screens/cart_screens.dart';
import 'package:online_shop/screens/home_screens.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectindex = 0;
  static List<Widget> _widgetoptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetoptions.elementAt(_selectindex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.1),
            ),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[300]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.blueAccent,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: "Bosh sahifa",
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: "Savat",
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: "Yoqtirilgan",
                ),
                GButton(
                  icon: LineIcons.user,
                  text: "Hisob",
                ),
              ],
              selectedIndex: _selectindex,
              onTabChange: ((value) {
                setState(() {
                  _selectindex = value;
                });
              }),
            ),
          ),
        ),
      ),
    );
  }
}
