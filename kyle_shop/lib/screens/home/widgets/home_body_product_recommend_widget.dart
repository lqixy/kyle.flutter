import 'package:flutter/material.dart';

class ProductRecommendWidget extends StatelessWidget {
  const ProductRecommendWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: ListView.builder(
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          spreadRadius: 1,
                          blurRadius: 0.8,
                          offset: Offset(0, 1))
                    ]),
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.28,
                child: Center(child: Text('e')),
              ),
            );
          }),
      // color: Colors.amber,
    );
  }
}
