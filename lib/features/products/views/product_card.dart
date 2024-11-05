import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/buttons/custom_button.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomText(text: 'text'),
                CustomText(
                  text: '200\$',
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent.shade700,
                ),
                SizedBox(height: 8.h),
                CustomButton(
                  background: Colors.orange,
                  height: 30.h,
                  borderRadius: 25.r,
                  title: tr('buyNow'),
                  textColor: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
