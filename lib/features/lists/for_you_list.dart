import 'package:ecommerce_app/features/lists/cards_list.dart';
import 'package:ecommerce_app/features/lists/couples_list.dart';
import 'package:ecommerce_app/features/lists/kids_list.dart';
import 'package:ecommerce_app/features/lists/men_list.dart';
import 'package:ecommerce_app/features/lists/mom_list.dart';
import 'package:ecommerce_app/features/lists/women_list.dart';

import '../products/view_model/product_model.dart';

List<ProductModel> forYouProductsList = [
  ProductModel(
    productImage: cardsCategoryProductsImages[0],
    productName: cardsCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: cardsCategoryProductsLinks[0],
  ),
  ProductModel(
    productImage: couplesCategoryProductsImages[0],
    productName: couplesCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: couplesCategoryProductsLinks[0],
  ),
  ProductModel(
    productImage: momCategoryProductsImages[0],
    productName: momCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: momCategoryProductsLinks[0],
  ),
  ProductModel(
    productImage: womenCategoryProductsImages[0],
    productName: womenCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: womenCategoryProductsLinks[0],
  ),
  ProductModel(
    productImage: menCategoryProductsImages[0],
    productName: menCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: menCategoryProductsLinks[0],
  ),
  ProductModel(
    productImage: kidsCategoryProductsImages[0],
    productName: kidsCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: kidsCategoryProductsLinks[0],
  ),
];
