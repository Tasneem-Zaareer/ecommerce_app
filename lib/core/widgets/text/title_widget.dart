import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../general/custom_text.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final double? titleSize;
  final FontWeight? subtitleFontweight;
  final Function()? onTap;
  const TitleWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.titleSize,
    this.subtitleFontweight,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: tr(title),
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
          GestureDetector(
            onTap: onTap,
            child: CustomText(
              text: tr(subtitle ?? ''),
              fontSize: titleSize ?? 12.sp,
              fontWeight: subtitleFontweight ?? FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
