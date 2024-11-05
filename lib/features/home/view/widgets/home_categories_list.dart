import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../categories/view/category_view.dart';
import '../../view_model/category_model.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    //!!!! temporary list of categories

    final List<CategoryModel> categoriesList = [
      CategoryModel(
        categoryName: tr('men'),
        imagePath: AppImages.categoryMenImage,
      ),
      CategoryModel(
        categoryName: tr('women'),
        imagePath: AppImages.categoryWomenImage,
      ),
      CategoryModel(
        categoryName: tr('bags'),
        imagePath: AppImages.categoryBagImage,
      ),
      CategoryModel(
        categoryName: tr('watches'),
        imagePath: AppImages.categoryWatchesImage,
      ),
      CategoryModel(
        categoryName: tr('heels'),
        imagePath: AppImages.categoryHeelsImage,
      ),
      CategoryModel(
        categoryName: tr('kids'),
        imagePath: AppImages.categoryKidsImage,
      ),
      CategoryModel(
        categoryName: tr('shoes'),
        imagePath: AppImages.categoryShoesImage,
      ),
      CategoryModel(
        categoryName: tr('beauty'),
        imagePath: AppImages.categoryBeautyImage,
      ),
      CategoryModel(
        categoryName: tr('luggages'),
        imagePath: AppImages.categoryLuggageImage,
      ),
      CategoryModel(
        categoryName: tr('jewellery'),
        imagePath: AppImages.categoryJewelleryImage,
      ),
      CategoryModel(
        categoryName: tr('bags'),
        imagePath: AppImages.categoryBagImage,
      ),
      CategoryModel(
        categoryName: tr('watches'),
        imagePath: AppImages.categoryWatchesImage,
      ),
      CategoryModel(
        categoryName: tr('heels'),
        imagePath: AppImages.categoryHeelsImage,
      ),
      CategoryModel(
        categoryName: tr('kids'),
        imagePath: AppImages.categoryKidsImage,
      ),
      CategoryModel(
        categoryName: tr('shoes'),
        imagePath: AppImages.categoryShoesImage,
      ),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
          height: 200.h,
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoriesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Number of columns (2 in this case)
              childAspectRatio: 1, // Aspect ratio of each item
              crossAxisSpacing: 5.w,
              mainAxisSpacing: 5.h,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CategoryViewProducts(
                      categoryTitle: tr(categoriesList[index].categoryName),
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  Container(
                    height: 40.h,
                    width: 40.h,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Image.asset(
                          categoriesList[index].imagePath,
                          fit: BoxFit.cover,
                          width: 30.w,
                          height: 30.w,
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
