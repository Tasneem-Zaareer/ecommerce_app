//!!!! temporary list of categories
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/features/lists/couples_list.dart';
import 'package:ecommerce_app/features/lists/dad_list.dart';
import 'package:ecommerce_app/features/lists/husband_list.dart';
import 'package:ecommerce_app/features/lists/kids_list.dart';
import 'package:ecommerce_app/features/lists/mom_list.dart';
import 'package:ecommerce_app/features/lists/wife_list.dart';
import 'package:ecommerce_app/features/lists/women_list.dart';
import '../../core/constants/image_path.dart';
import '../home/view_model/category_model.dart';
import 'cards_list.dart';

final List<CategoryModel> categoriesList = [
  CategoryModel(
    categoryName: tr('Mom'),
    imagePath: AppImages.categoryWatchesImage,
    categoryProductsList: momCategoryProductsList,
  ),
  // CategoryModel(
  //   categoryName: tr('Dad'),
  //   imagePath: AppImages.categoryMenImage,
  //   categoryProductsList: dadCategoryProductsList,
  // ),
  CategoryModel(
    categoryName: tr('Couples'),
    imagePath: AppImages.categoryBagImage,
    categoryProductsList: couplesCategoryProductsList,
  ),
  CategoryModel(
    categoryName: tr('Women'),
    imagePath: AppImages.categoryWomenImage,
    categoryProductsList: womenCategoryProductsList,
  ),
  // CategoryModel(
  //   categoryName: tr('Wife'),
  //   imagePath: AppImages.categoryWatchesImage,
  //   categoryProductsList: wifeCategoryProductsList,
  // ),
  CategoryModel(
    categoryName: tr('Husband'),
    imagePath: AppImages.categoryMenImage,
    categoryProductsList: husbandCategoryProductsList,
  ),
  CategoryModel(
    categoryName: tr('Kids'),
    imagePath: AppImages.categoryKidsImage,
    categoryProductsList: kidsCategoryProductsList,
  ),
  CategoryModel(
    categoryName: tr('Cards'),
    imagePath: AppImages.categoryTestImage2,
    categoryProductsList: cardsCategoryProductsList,
  ),
];
