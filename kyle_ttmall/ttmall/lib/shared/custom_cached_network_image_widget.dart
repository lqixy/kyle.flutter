import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'custom_loading_circle_widget.dart';

class CustomCachedNetworkImageWidget extends StatelessWidget {
  CustomCachedNetworkImageWidget(
      {super.key,
      required this.imageUrl,
      this.height,
      this.width,
      this.fit = BoxFit.fill});
  String imageUrl;
  double? height;
  double? width;
  BoxFit? fit;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      height: height,
      width: width,
      imageUrl: imageUrl,
      placeholder: (context, url) => const CustomLoadingCircleWidget(),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
