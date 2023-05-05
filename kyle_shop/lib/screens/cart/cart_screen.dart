import 'package:flutter/material.dart';

import '../../shared/appstyle.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          'Cart',
          style: appstyle(
            40,
            Colors.black,
          ),
        )),
      ),
    );
    ;
  }
}
