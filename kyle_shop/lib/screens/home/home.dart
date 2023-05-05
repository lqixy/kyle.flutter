import 'package:flutter/material.dart';
import 'package:kyle_shop/models/product.dart';
import 'package:kyle_shop/screens/home/widgets/home_body_label_widget.dart';
import 'package:kyle_shop/screens/home/widgets/home_body_product_recommend_widget.dart';
import 'package:kyle_shop/screens/home/widgets/home_body_product_widget.dart';
import 'package:kyle_shop/screens/home/widgets/home_title_widget.dart';
import 'package:kyle_shop/services/product_service.dart';
import 'package:kyle_shop/shared/appstyle.dart';
import 'package:kyle_shop/shared/product_card.dart';

class HomeScreenV2 extends StatefulWidget {
  const HomeScreenV2({super.key});

  @override
  State<HomeScreenV2> createState() => _HomeScreenV2State();
}

class _HomeScreenV2State extends State<HomeScreenV2>
    with TickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 3, vsync: this);

  late List<Product> _babys;
  late List<Product> _fangyi;
  late List<Product> _yiselie;

  void getBaby() {
    _babys = ProductService().getBaby();
  }

  void getFangyi() {
    _fangyi = ProductService().getFangyi();
  }

  void getYiselie() {
    _yiselie = ProductService().getYisilie();
  }

  @override
  void initState() {
    super.initState();
    getBaby();
    getFangyi();
    getYiselie();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE2E2E2),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            HomeTitleWidget(tabController: _tabController),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.265),
              child: Container(
                padding: const EdgeInsets.only(left: 12),
                child: TabBarView(controller: _tabController, children: [
                  HomeBodyProductWidget(
                    products: _babys,
                  ),
                  HomeBodyProductWidget(products: _fangyi),
                  HomeBodyProductWidget(products: _yiselie),
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// class HomeScreen extends StatelessWidget
// //  with SingleTickerProviderStateMixin
// {
//   const HomeScreen({super.key});
// // late final TabController _tabController = TabController(length: 3, vsync: this);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SizedBox(
//         height: MediaQuery.of(context).size.height,
//         child: Stack(
//           children: [
//             Container(
//               padding: EdgeInsets.fromLTRB(16, 45, 0, 0),
//               height: MediaQuery.of(context).size.height * 0.4,
//               // decoration: BoxDecoration(
//               // ),
//               child: Container(
//                 width: MediaQuery.of(context).size.width,
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Athletics Shoes',
//                         style: appstyleWithHt(42, Colors.black, 1.5),
//                       ),
//                       Text(
//                         'Collection',
//                         style: appstyleWithHt(42, Colors.black, 1.5),
//                       )
//                     ]),
//               ),
//             ),
//             TabBar(
//                 indicatorSize: TabBarIndicatorSize.label,
//                 indicatorColor: Colors.transparent,
//                 isScrollable: true,
//                 labelColor: Colors.white,
//                 labelStyle: appstyle(
//                   24,
//                   Colors.white,
//                 ),
//                 unselectedLabelColor: Colors.grey.withOpacity(0.3),
//                 tabs: [
//                   Tab(
//                     text: 'Men Shoes',
//                   ),
//                   Tab(
//                     text: 'Women Shoes',
//                   ),
//                   Tab(
//                     text: 'Kids Shoes',
//                   ),
//                 ]),
//             TabBarView(children: [
//               Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.405,
//                     color: Colors.amber,
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.405,
//                     color: Colors.amber,
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   Container(
//                     height: MediaQuery.of(context).size.height * 0.405,
//                     color: Colors.amber,
//                   )
//                 ],
//               ),
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }
