import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularTagsList extends StatelessWidget {
  const PopularTagsList({super.key});

  @override
  Widget build(BuildContext context) {
    const List popularTagsList = [
      'Mothers Day',
      'Fathers Day',
      'Christmas',
      'New Year'
    ];

    return CustomContainer(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularTagsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Chip(
              backgroundColor: Colors.lightBlue.shade100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              side: BorderSide(
                color: Colors.lightBlue.shade100,
                width: 1,
              ),
              label: CustomText(
                text: popularTagsList[index],
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
           
            
           



          );
        },
      ),
    );
  }
}
