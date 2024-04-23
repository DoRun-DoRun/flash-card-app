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
          image: data["image"],
          history: List<bool>.from(data["history"]),
        );
      }).toList();

  List<WordCard> filterByCategory(String? category) {
    // state의 WordCard 리스트에서 주어진 카테고리와 일치하는 객체만 필터링하여 반환
    return state.where((card) => card.category.english == category).toList();
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

    // 업데이트된 WordCard 객체를 state에 반영합니다.
    state = [
      for (int i = 0; i < state.length; i++)
        if (i == index) wordCard else state[i]
    ];
  }
}
