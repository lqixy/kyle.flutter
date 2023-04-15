import 'package:flutter/material.dart';

import '../commons/app_config.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.label, required this.onPressed});

  final String label;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(onPressed: onPressed, child: Text(label));
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            color: AppConfig.primarySecond,
            borderRadius: BorderRadius.circular(14),
            boxShadow: [
              BoxShadow(
                  color: AppConfig.primaryElement,
                  offset: Offset(0, 3),
                  blurRadius: 12)
            ]),
        child: Text(
          label,
          style: TextStyle(
              fontFamily: AppConfig.fontFamily,
              fontSize: 20,
              color: AppConfig.primamry,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
