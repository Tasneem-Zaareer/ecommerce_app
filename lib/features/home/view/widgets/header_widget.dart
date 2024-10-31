import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/general/custom_container.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: tr('findYour'),
            fontSize: 28.sp,
          ),
          CustomText(
            text: tr('bestPresent'),
            fontSize: 28.sp,
          ),
        ],
      ),
    );

    // !!!! first header
    // return CustomContainer(
    //   height: 100.h,
    //   color: Colors.purple.shade100,
    // );
  }
}
