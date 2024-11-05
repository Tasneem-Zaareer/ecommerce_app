import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/features/categories/view/all_categories_view.dart';
import 'package:ecommerce_app/features/home/view/widgets/custom_category_list.dart';
import 'package:ecommerce_app/features/home/view/widgets/for_you_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/header_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/logo.dart';
import 'package:ecommerce_app/core/widgets/text/title_widget.dart';
import 'package:ecommerce_app/features/home/view_model/category_model.dart';
import 'package:ecommerce_app/features/most_popular_products/view/custom_all_products_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_categories_list.dart';

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
            // const SearchBarWidget(),
            TitleSection(
              title: tr('shopByCategory'),
              subtitle: tr('seeAll'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AllCategoriesView(),
                  ),
                );
              },
            ),
            const HomeCategoriesList(),
            TitleSection(title: tr('forYou')),
            const ForYouProductsList(),
            TitleSection(
              title: tr('mostPopular'),
              subtitle: tr('seeAll'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AllProductsView(
                      title: 'Most Popular Products',
                      productsList: [],
                    ),
                  ),
                );
              },
            ),
            const CustomCategoryList(categoryName: 'Most Popular'),
            TitleSection(
              title: tr('trendy'),
              subtitle: tr('seeAll'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AllProductsView(
                      title: 'Trendy Products',
                      productsList: [],
                    ),
                  ),
                );
              },
            ),
            const CustomCategoryList(categoryName: 'Trendy'),
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
        margin: EdgeInsets.symmetric(vertical: 10.h),
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
