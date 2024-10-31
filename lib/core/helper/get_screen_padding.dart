import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

EdgeInsetsGeometry getHorizontalPadding({double? horizontal}) {
  return EdgeInsets.symmetric(horizontal: horizontal ?? 20.w, vertical: 0);
}

EdgeInsetsGeometry getVerticalPadding() {
  return EdgeInsets.symmetric(horizontal: 0, vertical: 20.h);
}

EdgeInsetsGeometry getPadding({double? padding}) {
  return EdgeInsets.symmetric(
      horizontal: (padding?.w) ?? 20.w, vertical: (padding?.h) ?? 20.h);
}
