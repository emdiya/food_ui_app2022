import 'package:flutter/material.dart';
import 'package:testapp/pages/home_screen.dart';

import 'drawerscreen.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
