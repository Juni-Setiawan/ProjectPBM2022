import 'package:flutter/material.dart';
import 'package:CasperCar/home.dart';
import 'package:CasperCar/cart.dart';
import 'package:CasperCar/maps.dart';
import 'package:CasperCar/history.dart';
import 'package:CasperCar/profile.dart';
import 'package:CasperCar/edit_profil.dart';
import 'style/style.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => NavbarState();
}

class NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    cart(),
    maps(),
    HistoryPage(),
    Profile()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'Home',
            backgroundColor: color1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: color1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.pin_drop),
            label: 'Maps',
            backgroundColor: color1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: 'History',
            backgroundColor: color1,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Profile',
            backgroundColor: color1,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
