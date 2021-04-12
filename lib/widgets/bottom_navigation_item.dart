import 'package:ebook_app/general/general_variable.dart';
import 'package:ebook_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationItem extends StatefulWidget {
  @override
  _BottomNavigationItemState createState() => _BottomNavigationItemState();
}

class _BottomNavigationItemState extends State<BottomNavigationItem> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    null,
    null,
    null,
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/home.svg",
              color: _selectedIndex == 0 ? greenColor : greyColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/save.svg",
              color: _selectedIndex == 1 ? greenColor : greyColor,
            ),
            label: 'Save',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/cart.svg",
              color: _selectedIndex == 2 ? greenColor : greyColor,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/icons/account.svg",
              color: _selectedIndex == 3 ? greenColor : greyColor,
            ),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: greenColor,
        unselectedItemColor: greyColor,
        backgroundColor: whiteColor,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
