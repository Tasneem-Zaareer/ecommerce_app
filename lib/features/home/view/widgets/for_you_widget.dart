import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForYouWidget extends StatelessWidget {
  const ForYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
        itemBuilder: (context, index) => CustomContainer(
          color: Colors.purple.shade100,
          height: 100.h,
        ),
      ),
    );
  }
}
