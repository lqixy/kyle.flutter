import 'package:flutter/material.dart';
import 'package:kyle_shop/shared/appstyle.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          'Search',
          style: appstyle(
            40,
            Colors.black,
          ),
        )),
      ),
    );
  }
}
