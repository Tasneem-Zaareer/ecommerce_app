import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/products/views/product_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/general/custom_container.dart';

class CustomCategoryList extends StatelessWidget {
  final String categoryName;
  const CustomCategoryList({
    super.key,
    required this.categoryName,
  });

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
              GestureDetector(
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ProductView(
                        productImage: '',
                        productName: 'productName',
                        productDescription: 'productDescription',
                        productPrice: '20\$',
                        productLink: 'https://amzn.to/4fBCFix',
                      ),
                    ),
                  ),
                },
                child: CustomContainer(
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  height: 80.h,
                  width: 80.h,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Image.asset(AppImages.categoryTestImage2),
                  ),
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
