import 'package:flutter/material.dart';
import 'package:kyle_shop/shared/appstyle.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.productId,
      required this.productPrice,
      required this.productName,
      required this.categoryName,
      required this.image});

  final String productId;
  final String productPrice;
  final String productName;
  final String categoryName;
  final String image;

  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 0, 20, 0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.white,
                spreadRadius: 1,
                blurRadius: 0.6,
                offset: Offset(1, 1))
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(image))),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.favorite_outline),
                    ),
                    right: 10,
                    top: 10,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productName,
                      style: appstyleWithHt(20, Colors.black, 1.1),
                    ),
                    Text(
                      categoryName,
                      style: appstyleWithHt(15, Colors.grey, 1.5),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      productPrice,
                      style: appstyle(30, Colors.black, fw: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          'Colors',
                          style: appstyle(18, Colors.grey, fw: FontWeight.w500),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ChoiceChip(
                          label: Text(''),
                          selected: selected,
                          visualDensity: VisualDensity.compact,
                          selectedColor: Colors.black,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
