class CategoryModel {
  final String categoryName;
  final String imagePath;
  final String? categoryId;
  CategoryModel({
    required this.categoryName,
    required this.imagePath,
    this.categoryId,
  });
}
