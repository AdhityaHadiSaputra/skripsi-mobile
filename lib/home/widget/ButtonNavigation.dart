import 'package:flutter/material.dart';

class ButtonNavigation extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback ontap;
  const ButtonNavigation(
      {super.key,
      required this.icon,
      required this.label,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, color: Colors.white), Text(label)],
      ),
    );
  }
}
