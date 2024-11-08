import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/core/constants/image_path.dart';
import 'package:ecommerce_app/features/categories/view/all_categories_view.dart';
import 'package:ecommerce_app/features/home/view/widgets/custom_category_list.dart';
import 'package:ecommerce_app/features/home/for_you_products/for_you_products_list.dart';
import 'package:ecommerce_app/features/home/view/widgets/header_widget.dart';
import 'package:ecommerce_app/features/home/view/widgets/logo.dart';
import 'package:ecommerce_app/core/widgets/text/title_widget.dart';
import 'package:ecommerce_app/features/home/most_popular_products/view/custom_all_products_view.dart';
import 'package:ecommerce_app/features/products/view_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/home_categories_list.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductModel> ForYouproductsList = [
      ProductModel(
        productImage: AppImages.categoryShoesImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryWomenImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryHeelsImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryKidsImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryKidsImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryJewelleryImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryMenImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryWatchesImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productImage: AppImages.categoryLuggageImage,
        productName: 'productName',
        productDescription: 'productDescription',
        productPrice: '15\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
    ];

    List<ProductModel> mostPopularProductsList = [
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryWatchesImage,
        productPrice: '30\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryBeautyImage,
        productPrice: '1130\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryMenImage,
        productPrice: '300\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryBagImage,
        productPrice: '1130\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryKidsImage,
        productPrice: '300\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
    ];

    List<ProductModel> trendyProductsList = [
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryLuggageImage,
        productPrice: '30\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryBagImage,
        productPrice: '1130\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryKidsImage,
        productPrice: '300\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryBeautyImage,
        productPrice: '1130\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
      ProductModel(
        productName: 'productName',
        productDescription: 'productDescription',
        productImage: AppImages.categoryMenImage,
        productPrice: '300\$',
        productLink: 'https://amzn.to/4fBCFix',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const Logo(),
            const HomeHeaderWidget(),
            // const SearchBarWidget(),
            TitleSection(
              title: tr('shopByCategory'),
              // subtitle: tr('seeAll'),
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
            ForYouProductsList(
              forYouproductsListItems: ForYouproductsList,
            ),
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
            CustomCategoryList(
              categoryName: 'Most Popular',
              productsList: mostPopularProductsList,
            ),
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
            CustomCategoryList(
              categoryName: 'Trendy',
              productsList: trendyProductsList,
            ),
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
