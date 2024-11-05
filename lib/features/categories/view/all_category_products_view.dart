import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/products/views/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/image_path.dart';

class AllCategoryViewProducts extends StatelessWidget {
  final String categoryTitle;
  final String productsList; // will change later on !!!!

  const AllCategoryViewProducts({
    super.key,
    required this.categoryTitle,
    required this.productsList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: tr(categoryTitle)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 70.h,
              child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50.r),
                              child: Image.asset(
                                AppImages.categoryBagImage,
                                width: 50.w,
                                height: 50.w,
                              ),
                            ),
                            SizedBox(height: 5.h),
                            CustomText(
                              text: 'text',
                              fontSize: 10.sp,
                            )
                          ],
                        ),
                      )),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                  mainAxisExtent: 240.h,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) => ProductCard(
                  productImage: productsList,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
