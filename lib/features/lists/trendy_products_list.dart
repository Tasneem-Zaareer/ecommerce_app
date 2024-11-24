import 'package:ecommerce_app/features/lists/cards_list.dart';
import 'package:ecommerce_app/features/lists/couples_list.dart';
import 'package:ecommerce_app/features/lists/kids_list.dart';
import 'package:ecommerce_app/features/lists/men_list.dart';
import 'package:ecommerce_app/features/lists/mom_list.dart';
import 'package:ecommerce_app/features/lists/women_list.dart';

import '../../core/constants/image_path.dart';
import '../products/view_model/product_model.dart';

List<ProductModel> trendyProductsList = [
  ProductModel(
    productImage: cardsCategoryProductsImages[2],
    productName: cardsCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: cardsCategoryProductsLinks[2],
  ),
  ProductModel(
    productImage: couplesCategoryProductsImages[2],
    productName: couplesCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: couplesCategoryProductsLinks[2],
  ),
  ProductModel(
    productImage: momCategoryProductsImages[2],
    productName: momCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: momCategoryProductsLinks[2],
  ),
  ProductModel(
    productImage: womenCategoryProductsImages[2],
    productName: womenCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: womenCategoryProductsLinks[2],
  ),
  ProductModel(
    productImage: menCategoryProductsImages[2],
    productName: menCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: menCategoryProductsLinks[2],
  ),
  ProductModel(
    productImage: kidsCategoryProductsImages[2],
    productName: kidsCategoryProductsNames[2],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: kidsCategoryProductsLinks[2],
  ),
];