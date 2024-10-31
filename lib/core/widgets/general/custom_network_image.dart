import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_loading.dart';

class CustomNetworkImage extends StatelessWidget {
  final String imageUrl;
  final double? height;
  final double? width;
  final EdgeInsetsGeometry? padding;
  final BoxFit? fit;
  final BorderRadiusGeometry? borderRadius;

  const CustomNetworkImage({
    super.key,
    required this.imageUrl,
    this.height,
    this.width,
    this.padding,
    this.fit,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(14),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SizedBox(
          height: height,
          width: width,
          child: imageUrl.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: double.infinity,
                  fit: fit ?? BoxFit.cover,
                  placeholder: (context, url) => SizedBox(
                    height: height ?? 100.sp,
                    width: width ?? 100.sp,
                    child: myLoadingIndicator(context),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                  ),
                )
              : const Icon(
                  Icons.broken_image,
                  color: Colors.black38,
                ),
        ),
      ),
    );
  }
}
