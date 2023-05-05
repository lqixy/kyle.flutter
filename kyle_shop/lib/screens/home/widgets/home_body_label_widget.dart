import 'package:flutter/material.dart';

import '../../../shared/appstyle.dart';

class HomeBodyLabelWidget extends StatelessWidget {
  const HomeBodyLabelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '精品推荐',
                style: appstyle(
                  24,
                  Colors.black,
                ),
              ),
              Row(
                children: [
                  Text(
                    '全部',
                    style: appstyle(
                      22,
                      Colors.black,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
                    size: 20,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
