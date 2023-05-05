import 'package:flutter/material.dart';

import '../../shared/appstyle.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          'Profile',
          style: appstyle(40, Colors.black),
        )),
      ),
    );
    ;
  }
}
