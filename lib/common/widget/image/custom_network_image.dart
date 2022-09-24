import 'package:boilerplate/common/constant/assets.dart';
import 'package:boilerplate/common/widget/image/cache_manage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    required this.url,
    required this.fit,
    this.height,
    this.width,
    this.color,
    this.placeholder,
    this.placeholderFit,
    this.alignment = Alignment.center,
    this.customPlaceHolder,
  });

  final String url;
  final BoxFit fit;
  final double? height;
  final double? width;
  final Color? color;
  final BoxFit? placeholderFit;
  final String? placeholder;
  final Alignment alignment;
  final Widget? customPlaceHolder;

  @override
  Widget build(BuildContext context) {
    final String _url = url;
    return CachedNetworkImage(
      imageUrl: _url,
      fit: fit,
      height: height,
      width: width,
      color: color,
      alignment: alignment,
      cacheManager: CustomCacheManager.instance,
      errorWidget: (a, b, c) =>
          customPlaceHolder ??
          Image.asset(
            placeholder ?? Assets.fallbackImage,
            fit: placeholderFit ?? fit,
            height: height,
            alignment: alignment,
            width: width,
          ),
      placeholder: (a, c) =>
          customPlaceHolder ??
          Image.asset(
            placeholder ?? Assets.fallbackImage,
            fit: placeholderFit ?? fit,
            height: height,
            alignment: alignment,
            width: width,
          ),
    );
  }
}
