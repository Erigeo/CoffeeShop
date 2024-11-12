import 'package:coffee_store/components/bottom_navigation_bar.dart';
import 'package:coffee_store/screens/home.dart';
import 'package:coffee_store/screens/register.dart';
import 'package:flutter/material.dart';

class UserHome extends StatefulWidget {
  const UserHome({super.key});

  @override
  State<UserHome> createState() => _UserHomeState();
}

class _UserHomeState extends State<UserHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedScreen() {
    switch (_selectedIndex) {
      case 0:
        return const Register();
      case 1:
        return const Register();
      default:
        return const Register();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getSelectedScreen(),
      bottomNavigationBar:
          CustomBottomNavigationBar(onItemSelected: _onItemTapped),
    );
  }
}
