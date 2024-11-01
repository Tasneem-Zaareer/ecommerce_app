// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_app/core/constants/dimentions.dart';
import 'package:ecommerce_app/features/home/view/widgets/header_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/logo.dart';
import 'package:ecommerce_app/features/home/view/widgets/search_bar_widget.dart';
import 'package:ecommerce_app/core/widgets/text/title_widget.dart';
import 'package:ecommerce_app/features/search/views/widgets/search_header_widget.dart';
import 'package:ecommerce_app/features/search/views/widgets/search_results_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/popular_tags_list.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenDimentions.horizontalPadding),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Logo(),
              SearchHeaderWidget(),
              SearchBarWidget(),
              TitleWidget(
                title: 'PopularTags',
                titleSize: 14.sp,
              ),
              PopularTagsList(),
              TitleWidget(
                title: 'Results',
                titleSize: 14.sp,
              ),
              SearchResultsList(),
            ],
          ),
        ),
      ),
    );
  }
}
