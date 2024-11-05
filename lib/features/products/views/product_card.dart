import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/general/custom_container.dart';

class ProductCard extends StatelessWidget {
  final String productImage;

  const ProductCard({
    super.key,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.r),
              topRight: Radius.circular(10.r),
            ),
            child: Image.asset(
              productImage,
              fit: BoxFit.cover,
              height: 140.h,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'text'),
                const CustomText(text: '200\$'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
