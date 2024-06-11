import 'dart:convert';

import 'package:flash_card_app/assets/word_data.dart';
import 'package:flash_card_app/model/card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'card_repo.g.dart';

@riverpod
class CardList extends _$CardList {
  @override
  Future<List<WordCard>> build() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<WordCard>? localWordCards;
    List<String>? wordDataJson = prefs.getStringList('wordData');

    if (wordDataJson != null) {
      localWordCards = WordCard.fromJsonList(wordDataJson);
    }

    final List<WordCard> wordCards = wordData.map((data) {
      return WordCard(
        category: data["category"],
        korWord: data["korWord"],
        engWord: data["engWord"],
        displayWord: data["engWord"],
        image: data["image"],
        history: localWordCards != null
            ? localWordCards
                .firstWhere((card) => card.engWord == data["engWord"])
                .history
            : List<bool>.from(data["history"]),
        isToggle: false,
      );
    }).toList();

    wordCards.shuffle();
    return wordCards;
  }

  List<WordCard> filterByCategory(String? category) {
    final currentState = state.asData?.value ?? [];
    return currentState
        .where((card) => card.category.korean == category)
        .toList();
  }

  int getIndex(WordCard word) {
    final currentState = state.asData?.value ?? [];
    return currentState.indexOf(word);
  }

  Future<void> shuffleCard() async {
    final currentState = state.asData?.value ?? [];
    final shuffledWordData = List<WordCard>.from(currentState);
    shuffledWordData.shuffle();
    state = AsyncValue.data(shuffledWordData);
  }

  Future<void> editHistory(bool isCorrect, int index) async {
    final currentState = state.asData?.value ?? [];
    final wordCard = currentState[index];
    wordCard.history.add(isCorrect);

    if (wordCard.history.length > 5) {
      wordCard.history.removeAt(0);
    }
    wordCard.isToggle = false;
    wordCard.displayWord = wordCard.engWord;

    final newState = List<WordCard>.from(currentState);
    newState[index] = wordCard;
    state = AsyncValue.data(newState);
    // 상태를 SharedPreferences에 저장
    await _saveWordData(newState);
  }

  Future<void> _saveWordData(List<WordCard> wordData) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final List<String> wordDataJson =
        wordData.map((wordCard) => jsonEncode(wordCard.toJson())).toList();
    // print(wordDataJson.length);
    prefs.setStringList('wordData', wordDataJson);
  }

  Future<void> toggleAnswer(int index) async {
    final currentState = state.asData?.value ?? [];
    final newState = List<WordCard>.from(currentState);

    newState[index].isToggle = !newState[index].isToggle;
    newState[index].displayWord = newState[index].isToggle
        ? newState[index].korWord
        : newState[index].engWord;

    state = AsyncValue.data(newState);
  }

  String getHistory(int index) {
    final currentState = state.asData?.value ?? [];
    if (currentState[index].history.isEmpty) {
      return "처음 보는 단어에요";
    }

    bool lastAnswer = currentState[index].history.last;
    int count = currentState[index]
        .history
        .where((value) => value == lastAnswer)
        .length;

    return lastAnswer ? "최근에 $count번 맞춘 단어에요" : "이전에 $count번 틀린 단어에요";
  }

  Future<void> resetHistory() async {
    final currentState = state.asData?.value ?? [];
    final newState = List<WordCard>.from(currentState);
    for (var wordCard in newState) {
      wordCard.history = [];
    }

    state = AsyncValue.data(newState);
    await _saveWordData(newState);
  }
}
