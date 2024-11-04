import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/image_path.dart';

class CategoryViewProducts extends StatelessWidget {
  final String categoryTitle;
  const CategoryViewProducts({super.key, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: tr(categoryTitle)),
      ),
      body: SafeArea(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
            mainAxisExtent: 100.h,
            crossAxisCount: 3,
          ),
          itemBuilder: (context, index) => Column(
            children: [
              Image.asset(AppImages.categoryTestImage),
              const CustomText(text: 'text'),
            ],
          ),
        ),
      ),
    );
  }
}
