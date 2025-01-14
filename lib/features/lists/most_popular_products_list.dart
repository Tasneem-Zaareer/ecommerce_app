import 'package:ecommerce_app/features/lists/cards_list.dart';
import 'package:ecommerce_app/features/lists/couples_list.dart';
import 'package:ecommerce_app/features/lists/kids_list.dart';
import 'package:ecommerce_app/features/lists/men_list.dart';
import 'package:ecommerce_app/features/lists/mom_list.dart';
import 'package:ecommerce_app/features/lists/women_list.dart';
import '../products/view_model/product_model.dart';

List<ProductModel> mostPopularProductsList = [
  ProductModel(
    productImage: cardsCategoryProductsImages[1],
    productName: cardsCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: cardsCategoryProductsLinks[1],
  ),
  ProductModel(
    productImage: couplesCategoryProductsImages[1],
    productName: couplesCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: couplesCategoryProductsLinks[1],
  ),
  ProductModel(
    productImage: momCategoryProductsImages[1],
    productName: momCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: momCategoryProductsLinks[1],
  ),
  ProductModel(
    productImage: womenCategoryProductsImages[1],
    productName: womenCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: womenCategoryProductsLinks[1],
  ),
  ProductModel(
    productImage: menCategoryProductsImages[1],
    productName: menCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: menCategoryProductsLinks[1],
  ),
  ProductModel(
    productImage: kidsCategoryProductsImages[1],
    productName: kidsCategoryProductsNames[1],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: kidsCategoryProductsLinks[1],
  ),
];
