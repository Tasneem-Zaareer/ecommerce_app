import 'package:ecommerce_app/features/products/view_model/product_model.dart';

class CategoryModel {
  String imagePath;
  String categoryName;
  List<ProductModel> categoryProductsList;

  CategoryModel({
    required this.imagePath,
    required this.categoryName,
    required this.categoryProductsList,
  });
}
