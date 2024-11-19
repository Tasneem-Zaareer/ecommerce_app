//!!!! temporary list of categories
import 'package:easy_localization/easy_localization.dart';
import 'package:ecommerce_app/features/categories/lists/mom_list.dart';

import '../../../core/constants/image_path.dart';
import '../../home/view_model/category_model.dart';

final List<CategoryModel> categoriesList = [
  CategoryModel(
    categoryName: tr('Mom'),
    imagePath: AppImages.categoryWatchesImage,
    categoryProductsList: momCategoryProductsList,
  ),
  CategoryModel(
    categoryName: tr('Dad'),
    imagePath: AppImages.categoryMenImage,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Couples'),
    imagePath: AppImages.categoryBagImage,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Women'),
    imagePath: AppImages.categoryWomenImage,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Kids'),
    imagePath: AppImages.categoryKidsImage,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Cards'),
    imagePath: AppImages.categoryTestImage2,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Wife'),
    imagePath: AppImages.categoryWatchesImage,
    categoryProductsList: [],
  ),
  CategoryModel(
    categoryName: tr('Husband'),
    imagePath: AppImages.categoryMenImage,
    categoryProductsList: [],
  ),
];
