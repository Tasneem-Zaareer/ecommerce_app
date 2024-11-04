import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

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
      'sport',
      'mom',
      'dad',
      'siblings',
      'friends',
      'family',
      'pets',
      'couples',
    ];
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: tr('allCategories')),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Container(
                width: 110.w,
                child: ListView.builder(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: [
                        CustomText(
                          text: tr(categoriesList[index]),
                          fontSize: 11.sp,
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                itemCount: categoriesList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 5,
                  childAspectRatio: 1,
                  mainAxisExtent: 70.h,
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) => Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child: Image.asset(
                        AppImages.categoryTestImage,
                        fit: BoxFit.cover,
                        width: 50.w,
                        height: 50.w,
                      ),
                    ),
                    CustomText(
                      fontSize: 7.sp,
                      text: tr(
                        categoriesList[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
