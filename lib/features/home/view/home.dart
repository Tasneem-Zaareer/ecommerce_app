import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/home/view/widgets/custom_category_list.dart';
import 'package:ecommerce_app/features/home/view/widgets/header_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/logo.dart';
import 'package:ecommerce_app/features/home/view/widgets/search_bar_widget.dart';
import 'package:ecommerce_app/core/widgets/text/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/categories_widget.dart';

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
            const SearchBarWidget(),
            TitleSection(title: tr('shopByCategory'), subtitle: tr('seeAll')),
            const HomeCategoriesWidget(),
            TitleSection(title: tr('forYou')),
            // const ForYouWidget(),
            TitleSection(title: tr('mostPopular'), subtitle: tr('seeAll')),
            CustomCategoryList(),
            TitleSection(title: tr('trendy'), subtitle: tr('seeAll')),
            CustomCategoryList(),
          ],
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  final String title;
  final String? subtitle;

  const TitleSection({
    super.key,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.h),
        child: TitleWidget(
          title: title,
          subtitle: subtitle,
          subtitleFontweight: FontWeight.w400,
        ),
      ),
    );
  }
}
