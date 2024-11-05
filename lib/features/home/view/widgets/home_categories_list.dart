import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../categories/view/category_view.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    //!!!! temporary list of categories
    List<String> categoriesList = [
      'men',
      'women',
      'kids',
      'shoes',
      'accessories',
      'jewelry',
      'beauty',
      'home',
      'luggage',
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        height: 75.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CategoryViewProducts(
                    categoryTitle: tr(categoriesList[index]),
                  ),
                ),
              );
            },
            child: Column(
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
                  text: tr(categoriesList[index]),
                  fontSize: 12.sp,
                )
              ],
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(width: 10.w),
          itemCount: categoriesList.length,
        ),
      ),
    );
  }
}
