import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../shared/product_card.dart';
import 'home_body_label_widget.dart';
import 'home_body_product_recommend_widget.dart';

class HomeBodyProductWidget extends StatelessWidget {
  const HomeBodyProductWidget({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.405,
          child: ListView.builder(
              itemCount: products.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var curProduct = products[index];
                return ProductCard(
                  productId: curProduct.args,
                  productPrice: curProduct.sellprice,
                  productName: curProduct.title,
                  categoryName: curProduct.brandname,
                  image: curProduct.pic,
                );
              }),
        ),
        HomeBodyLabelWidget(),
        ProductRecommendWidget()
      ],
    );
  }
}
