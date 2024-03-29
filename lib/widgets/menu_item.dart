import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String? title;
  final IconData? icon;
  const MenuItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: GestureDetector(
        child: Row(
          children: [
            Icon(icon, color: Colors.lightBlueAccent, size: 30),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                title!,
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
