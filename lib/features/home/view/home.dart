import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/widgets/general/custom_container.dart';
import 'package:ecommerce_app/core/widgets/general/custom_text.dart';
import 'package:ecommerce_app/features/home/view/widgets/for_you_widget.dart';
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
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Logo(),
              HomeHeaderWidget(),
              SearchBarWidget(),
              // TitleSectionDetails(title: 'shopByCategory', subtitle: 'seeAll'),
              // HomeCategoriesWidget(),
              // TitleSectionDetails(title: 'forYou', subtitle: ''),
              // ForYouWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
