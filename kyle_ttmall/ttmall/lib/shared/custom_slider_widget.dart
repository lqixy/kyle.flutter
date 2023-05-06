import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ttmall/shared/custom_cached_network_image_widget.dart';
import 'package:ttmall/utils/app_config.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget(this.height, this.width, this.images, {super.key});

  final double height;
  final double width;
  // final List<CustomCachedNetworkImageWidget> items;
  final List<String> images;
  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  double _index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: Stack(children: [
        CarouselSlider(
            items: widget.images
                .map((e) => CustomCachedNetworkImageWidget(
                    height: widget.height, width: widget.width, imageUrl: e))
                .toList(),
            options: CarouselOptions(
                height: widget.height,
                onPageChanged: (index, reason) {
                  setState(() {
                    _index = index.toDouble();
                  });
                },
                viewportFraction: 1,
                autoPlay: true)),
        Positioned(
          bottom: 10.h,
          left: 0,
          right: 0,
          child: DotsIndicator(
            dotsCount: widget.images.length,
            position: _index,
            decorator: DotsDecorator(
                size: Size.square(9),
                activeColor: AppConfig.primaryBackgroundColorRed),
          ),
        )
      ]),
    );
  }
}
