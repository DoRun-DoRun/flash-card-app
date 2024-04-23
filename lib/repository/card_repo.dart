import 'dart:math';

import 'package:flash_card_app/assets/word_data.dart';
import 'package:flash_card_app/model/card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_repo.g.dart';

// 무작위 카드 Provider
@riverpod
WordCard randomCard(RandomCardRef ref) {
  final randomIndex = Random().nextInt(wordData.length);
  final randomWord = wordData[randomIndex];

  return WordCard.fromJson(randomWord);
}

// 특정 인덱스의 카드 Provider
@riverpod
WordCard cardByIndex(CardByIndexRef ref, int index) {
  final word = wordData[index];

  return WordCard.fromJson(word);
}

// 주어진 category 값과 일치하는 WordCard 객체만 필터링
@riverpod
List<WordCard> allCard(AllCardRef ref, String? categoryName) {
  return wordData
      .where((data) => WordCard.fromJson(data).category.english == categoryName)
      .map((data) => WordCard.fromJson(data))
      .toList();
}
