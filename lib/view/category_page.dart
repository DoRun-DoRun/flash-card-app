import 'package:flash_card_app/repository/category_repo.dart';
import 'package:flash_card_app/view/category_widget.dart';
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
          // title: const Text("Category"),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
            ),
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '카테고리',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                  ),
                  itemCount: categoryList.length,
                  itemBuilder: (context, index) {
                    final wordCard = categoryList[index];
                    return CategoryWidget(wordCard: wordCard);
                  }),
            ),
            const SizedBox(
              height: 48,
            ),
            const Center(
              child: Text(
                "단어 기록 초기화",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
