import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/general/custom_container.dart';

class CustomCategoryList extends StatelessWidget {
  const CustomCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 125.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              CustomContainer(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                height: 80.h,
                width: 80.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(AppImages.categoryTestImage2),
                ),
              ),
              SizedBox(height: 5.h),
              CustomText(
                text: tr('kids'),
                fontSize: 12.sp,
              )
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(width: 10.w),
          itemCount: 10,
        ),
      ),
    );
  }
}
