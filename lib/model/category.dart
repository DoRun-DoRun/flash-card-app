class Category {
  final int categoryId;
  final String categoryName;
  String? categoryIcon;

  Category({
    required this.categoryId,
    required this.categoryName,
    this.categoryIcon,
  });
}
