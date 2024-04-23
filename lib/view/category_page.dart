import 'package:flash_card_app/repository/category_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoryList = ref.watch(allCategoriesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: ListView.builder(
          itemCount: categoryList.length,
          itemBuilder: (context, index) {
            final wordCard = categoryList[index];
            return GestureDetector(
              onTap: () {
                context.push('/category/${wordCard.english}');
              },
              child: ListTile(
                title: Text(wordCard.korean),
              ),
            );
          }),
    );
  }
}
