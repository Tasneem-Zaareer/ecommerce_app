import '../products/view_model/product_model.dart';

List<String> cardsCategoryProductsImages = [
    "https://m.media-amazon.com/images/I/81JuXVcBcjL._SX679_.jpg",

];

List<String> cardsCategoryProductsNames = [
    "Nail Polish Kit",

];

List<String> cardsCategoryProductsLinks = [
    "https://amzn.to/3CLfB2m",

];

List<ProductModel> cardsCategoryProductsList = [
    ProductModel(
    productImage: cardsCategoryProductsImages[0],
    productName: cardsCategoryProductsNames[0],
    productDescription: 'productDescription',
    productPrice: '15\$',
    productLink: cardsCategoryProductsLinks[0],
  ),
];
