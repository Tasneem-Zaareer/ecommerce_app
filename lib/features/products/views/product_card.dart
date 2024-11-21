import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/buttons/custom_button.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/widgets/general/custom_container.dart';

class ProductCard extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productLink;
  final double? productImageHeight;
  final double? productImageWidth;
  final double? productNameFontSize;
  final double? productPriceFontSize;
  final double? buyNowButtonHeight;
  final double? buyNowButtonFontSize;

  const ProductCard({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productLink,
    this.productImageHeight,
    this.productNameFontSize,
    this.productPriceFontSize,
    this.buyNowButtonHeight,
    this.buyNowButtonFontSize,
    this.productImageWidth,
  });

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.r),
          topRight: Radius.circular(10.r),
        ),
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.r),
                  topRight: Radius.circular(10.r),
                ),
                child: Image.network(
                  productImage,
                  fit: BoxFit.cover,
                  height: productImageHeight ?? 140.h,
                  width: productImageWidth,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: productName,
                  fontSize: productNameFontSize ?? 12.sp,
                  maxLines: 3,
                  textOverflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 5.h),
                CustomButton(
                  background: Colors.orange,
                  height: buyNowButtonHeight ?? 30.h,
                  borderRadius: 25.r,
                  title: tr('buyNow'),
                  textColor: Colors.white,
                  fontSize: buyNowButtonFontSize ?? 12.sp,
                  fontWeight: FontWeight.w600,
                  onPressed: () async {
                    await launchUrl(
                      Uri.parse(productLink),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
