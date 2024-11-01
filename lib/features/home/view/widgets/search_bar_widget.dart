import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
      child: TextField(
          decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        hintText: 'Search'.tr(),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 10.h,
        ),
      )),
    );
  }
}
