import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/lists/categories_list.dart';
import 'package:ecommerce_app/features/lists/mom_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../categories/view/all_category_products_view.dart';

class HomeCategoriesWidgetList extends StatelessWidget {
  const HomeCategoriesWidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
          height: 200.h,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns (2 in this case)
              childAspectRatio: 1 / 0.75, // Aspect ratio of each item
              // crossAxisSpacing: 5.w,
              // mainAxisSpacing: 5.h,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AllCategoryViewProducts(
                      categoryTitle: tr(categoriesList[index].categoryName),
                      productsList: categoriesList[index].categoryProductsList,
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    // height: 90.h,
                    // width: 90.h,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Image.asset(
                          categoriesList[index].imagePath,
                          fit: BoxFit.cover,
                          width: 60.w,
                          height: 60.w,
                        )),
                  ),
                  SizedBox(height: 5.h),
                  CustomText(
                    text: tr(categoriesList[index].categoryName),
                    fontSize: 12.sp,
                  )
                ],
              ),
            ),
          )),
    );
  }
}