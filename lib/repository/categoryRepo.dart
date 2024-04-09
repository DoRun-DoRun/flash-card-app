import 'package:flash_card_app/model/category.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = Provider<List<Category>>((ref) {
  return [
    Category(categoryId: 1, categoryName: 'Category 1'),
    Category(categoryId: 2, categoryName: 'Category 2'),
    Category(categoryId: 3, categoryName: 'Category 3'),
    Category(categoryId: 4, categoryName: 'Category 4'),
    Category(categoryId: 5, categoryName: 'Category 5'),
  ];
});