// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
import 'dart:math';

import 'package:flash_card_app/main.dart';
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

// 모든 카드 데이터 Provider
@riverpod
List<WordCard> allCard(AllCardRef ref) {
  return wordData.map((data) => WordCard.fromJson(data)).toList();
}

// 카드 데이터들을 관리하는 종합적인 Provider
@riverpod
WordCardDataProvider cardData(CardDataRef ref) {
  // 무작위 카드를 가져오는 Provider 감시
  final randomCard = ref.watch(randomCardProvider);

  // 특정 인덱스의 카드를 가져오는 Provider 감시
  cardByIndex(index) => ref.watch(cardByIndexProvider(index));

  // 모든 카드 데이터를 가져오는 Provider 감시
  final allCards = ref.watch(allCardProvider);

  return WordCardDataProvider(
    randomCard: randomCard,
    cardByIndex: cardByIndex,
    allCards: allCards,
  );
}

// 카드 데이터들을 관리하는 객체
class WordCardDataProvider {
  final WordCard randomCard;
  final WordCard Function(int) cardByIndex;
  final List<WordCard> allCards;

  WordCardDataProvider({
    required this.randomCard,
    required this.cardByIndex,
    required this.allCards,
  });
}
