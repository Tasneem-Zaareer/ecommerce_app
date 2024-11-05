import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/features/products/views/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/image_path.dart';

class ForYouProductsList extends StatelessWidget {
  const ForYouProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns (2 in this case)
          childAspectRatio: 1, // Aspect ratio of each item
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 10.h,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ProductDetailsView(
                  productImage: '',
                  productName: 'productName',
                  productDescription: 'productDescription',
                  productPrice: '15\$',
                  productLink: 'https://amzn.to/4fBCFix',
                ),
              ),
            );
          },
          child: CustomContainer(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10.r),
            ),
            height: 100.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Image.asset(
                AppImages.categoryTestImage3,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
