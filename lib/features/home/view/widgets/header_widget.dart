import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/widgets/general/custom_container.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 120.h,
      color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
      child: Image.asset(
        AppImages.homeHeaderImage,
        fit: BoxFit.cover,
      ),
    );
  }
}
