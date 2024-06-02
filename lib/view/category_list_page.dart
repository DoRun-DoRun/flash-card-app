import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryListPage extends ConsumerWidget {
  final String? categoryName;

  const CategoryListPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wordCardList =
        ref.read(cardListProvider.notifier).filterByCategory(categoryName);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryName.toString()),
      ),
      body: ListView.builder(
          itemCount: wordCardList.length,
          itemBuilder: (context, index) {
            final wordCard = wordCardList[index];
            return ListTile(
              title: Text(wordCard.korWord),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(wordCard.engWord),
                  Text(wordCard.history.toString())
                ],
              ),
            );
          }),
    );
  }
}
