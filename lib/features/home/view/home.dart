import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/features/categories/view/all_categories_view.dart';
import 'package:ecommerce_app/features/home/view/widgets/header_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/logo.dart';
import 'package:ecommerce_app/core/widgets/text/title_widget.dart';
import 'package:ecommerce_app/features/home/most_popular_products/view/custom_all_products_view.dart';
import 'package:ecommerce_app/features/lists/for_you_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../for_you_products/for_you_products_list.dart';
import 'widgets/home_categories_widget_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Logo(),
            const HomeHeaderWidget(),
            TitleSection(title: tr('shopByCategory')),
            const HomeCategoriesWidgetList(),
            // TitleSection(title: tr('forYou')),
            // ForYouProductsList(forYouproductsListItems: ForYouproductsList),
            // TitleSection(title: tr('mostPopular')),
            // TitleSection(title: tr('trendy')),
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Function()? onTap;

  const TitleSection({
    super.key,
    required this.title,
    this.subtitle,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 2.h),
        child: TitleWidget(
          title: title,
          subtitle: subtitle,
          subtitleFontweight: FontWeight.w400,
          onTap: onTap,
        ),
      ),
    );
  }
}
