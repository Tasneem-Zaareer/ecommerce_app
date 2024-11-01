import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 75.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Column(
            children: [
              Container(
                height: 40.h,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30.r),
                    child: Image.asset(
                      AppImages.categoryTestImage,
                      fit: BoxFit.cover,
                    )),
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
