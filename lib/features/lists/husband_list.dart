import '../products/view_model/product_model.dart';

List<String> husbandCategoryProductsImages = [
    "https://m.media-amazon.com/images/I/71mm75gCqoL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/71X2n1OScbL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/717Zw63vwGL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/61chX6AAQFL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/61XZwOluIIL._AC_SX679_.jpg",
];

List<String> husbandCategoryProductsNames = [
    "VEITORLD Survival Kit",
  "Simple Modern NFL Tumbler",
  "For Bare Feet NFL Socks",
  "Northwest Silk Touch Bath Robe",
  "Likeny Beard Bib",
];

List<String> husbandCategoryProductsLinks = [
    "https://amzn.to/3AQbQIu",
  "https://amzn.to/3YZLmfx",
  "https://amzn.to/40VyVUX",
  "https://amzn.to/3ASTh6y",
  "https://amzn.to/3Ohzhxr",
];

List<ProductModel> husbandCategoryProductsList = [
  ProductModel(
    productImage: husbandCategoryProductsImages[0],
    productName: husbandCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: husbandCategoryProductsLinks[0],
  ),
];
