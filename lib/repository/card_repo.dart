import 'package:flash_card_app/assets/word_data.dart';
import 'package:flash_card_app/model/card.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'card_repo.g.dart';

@riverpod
class CardList extends _$CardList {
  @override
  List<WordCard> build() => wordData.map((data) {
        return WordCard(
          category: data["category"],
          korWord: data["korWord"],
          engWord: data["engWord"],
          displayWord: data["engWord"],
          image: data["image"],
          history: List<bool>.from(data["history"]),
          isToggle: false,
        );
      }).toList();

  List<WordCard> filterByCategory(String? category) {
    // state의 WordCard 리스트에서 주어진 카테고리와 일치하는 객체만 필터링하여 반환
    return state.where((card) => card.category.korean == category).toList();
  }

  int getIndex(WordCard word) {
    // state의 WordCard 리스트에서 주어진 카테고리와 일치하는 객체만 필터링하여 반환
    return state.indexOf(word);
  }

  void shuffleCard() {
    // 상태(`state`)를 복사하여 리스트를 임의로 섞습니다.
    final shuffledWordData = state;
    shuffledWordData.shuffle();

    // 섞인 리스트를 상태에 할당합니다.
    state = shuffledWordData;
  }

  void editHistory(bool isCorrect, int index) {
    // 주어진 인덱스에 해당하는 WordCard 객체를 가져옵니다.
    final wordCard = state[index];
    // history 배열에 isCorrect 값을 추가합니다.
    wordCard.history.add(isCorrect);

    // history 길이가 5를 넘으면 가장 오래된 요소를 삭제하여 길이를 5로 유지합니다.
    if (wordCard.history.length > 5) {
      wordCard.history.removeAt(0);
    }
    wordCard.isToggle = false;
    wordCard.displayWord = wordCard.engWord;

    state[index] = wordCard;
  }

  void toggleAnswer(int index) {
    // state 리스트 복제
    List<WordCard> newState = List.from(state);

    // index에 해당하는 WordCard 객체의 isToggle 값 변경
    newState[index].isToggle = !newState[index].isToggle;
    newState[index].displayWord = newState[index].isToggle
        ? newState[index].korWord
        : newState[index].engWord;

    // 새로운 리스트를 state에 할당하고 notifyListeners() 호출
    state = newState;
  }

  String getHistory(int index) {
    if (state[index].history.isEmpty) {
      return "처음 보는 단어에요";
    }

    bool lastAnswer = state[index].history.last;
    int count =
        state[index].history.where((value) => value == lastAnswer).length;

    return lastAnswer ? "최근에 $count번 맞춘 단어에요" : "이전에 $count번 틀린 단어에요";
  }

  void resetHistory() {
    List<WordCard> newState = List.from(state);
    for (var wordCard in newState) {
      wordCard.history = [];
    }

    state = newState;
  }
}
