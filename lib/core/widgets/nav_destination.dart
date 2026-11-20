import 'package:flutter/material.dart';

class AppDestination {
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const AppDestination({
    required this.icon,
    required this.selectedIcon,
    required this.label,
  });
}

const appDestinations = [
  AppDestination(
    icon: Icons.home_outlined,
    selectedIcon: Icons.home,
    label: 'Home',
  ),
  AppDestination(
    icon: Icons.category_outlined,
    selectedIcon: Icons.category,
    label: 'Categories',
  ),
  AppDestination(
    icon: Icons.shopping_cart_outlined,
    selectedIcon: Icons.shopping_cart,
    label: 'Cart',
  ),
  AppDestination(
    icon: Icons.person_outline,
    selectedIcon: Icons.person,
    label: 'Profile',
  ),
];
