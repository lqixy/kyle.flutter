import 'package:flutter/material.dart';

class BottomNavItemWidget extends StatelessWidget {
  const BottomNavItemWidget(
      {super.key, required this.iconData, required this.onTap});

  final IconData iconData;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 36,
        width: 36,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
