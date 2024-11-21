import '../products/view_model/product_model.dart';

List<String> kidsCategoryProductsImages = [
  "https://m.media-amazon.com/images/I/71o86fPrwHL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/51+HSOOoOQL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/811ia-Lmu4L._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/71+F+3P+PzL._AC_SX679_.jpg",
  "https://m.media-amazon.com/images/I/9144JjpUbTL._AC_SX679_.jpg",
];

List<String> kidsCategoryProductsNames = [
  "Crayola Colourwhirls",
  "Amazon Echo Dot Kids",
  "Little Tikes Story Dream Machine",
  "Kanoodle 3D Puzzle",
  "Creativity for Kids Rock Painting Kit",
];

List<String> kidsCategoryProductsLinks = [
  "https://amzn.to/3V126lo",
  "https://amzn.to/3Zgo9Yb",
  "https://amzn.to/40Scj7L",
  "https://amzn.to/3V2KdCV",
  "https://amzn.to/3OiOkaf",
];

List<ProductModel> kidsCategoryProductsList = [
ProductModel(
  productImage: kidsCategoryProductsImages[0],
  productName: kidsCategoryProductsNames[0],
  productDescription: 'productDescription',
  productPrice: '15\$',
  productLink: kidsCategoryProductsLinks[0],
),
ProductModel(
  productImage: kidsCategoryProductsImages[1],
  productName: kidsCategoryProductsNames[1],
  productDescription: 'productDescription',
  productPrice: '13\$',
  productLink: kidsCategoryProductsLinks[1],
),
ProductModel(
  productImage: kidsCategoryProductsImages[2],
  productName: kidsCategoryProductsNames[2],
  productDescription: 'productDescription',
  productPrice: '49\$',
  productLink: kidsCategoryProductsLinks[2],
),
ProductModel(
  productImage: kidsCategoryProductsImages[3],
  productName: kidsCategoryProductsNames[3],
  productDescription: 'productDescription',
  productPrice: '60\$',
  productLink: kidsCategoryProductsLinks[3],
),
ProductModel(
  productImage: kidsCategoryProductsImages[4],
  productName: kidsCategoryProductsNames[4],
  productDescription: 'productDescription',
  productPrice: '60\$',
  productLink: kidsCategoryProductsLinks[4],
),

];
