import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/main/main_bloc.dart';
import 'bottom_navbar_item.dart';

class BottomNavbarWidget extends StatelessWidget {
  const BottomNavbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(8),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomNavItemWidget(
                  onTap: () {
                    BlocProvider.of<MainBloc>(context)
                        .add(MainNavToHomeEvent());
                    // print('home');
                  },
                  iconData: Icons.home,
                ),
                BottomNavItemWidget(
                  onTap: () {
                    BlocProvider.of<MainBloc>(context)
                        .add(MainNavToSearchEvent());
                    // print('search');
                  },
                  iconData: Icons.search,
                ),
                BottomNavItemWidget(
                  onTap: () {
                    // print('add');
                  },
                  iconData: Icons.add,
                ),
                BottomNavItemWidget(
                  onTap: () {
                    BlocProvider.of<MainBloc>(context)
                        .add(MainNavToCartEvent());
                    // print('cart');
                  },
                  iconData: Icons.shopping_cart,
                ),
                BottomNavItemWidget(
                  onTap: () {
                    BlocProvider.of<MainBloc>(context)
                        .add(MainNavToProfileEvent());
                    // print('person');
                  },
                  iconData: Icons.person,
                ),
              ],
            ),
          );
        },
      ),
    ));
  }
}
