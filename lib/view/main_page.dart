import 'package:flash_card_app/model/card.dart';
import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flash_card_app/view/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  int index = 0;
  Direction _direction = Direction.none;

  @override
  Widget build(BuildContext context) {
    final cardList = ref.watch(cardListProvider);
    final cardMethod = ref.read(cardListProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        // title: const Text("main"),
        actions: [
          IconButton(
              onPressed: () {
                context.push('/category');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: CardSwiper(
        cardsCount: cardList.length,
        isDisabled: !cardList[index].isToggle,
        isLoop: false,
        onTapDisabled: () {
          cardMethod.toggleAnswer(index);
        },
        allowedSwipeDirection:
            const AllowedSwipeDirection.symmetric(horizontal: true),
        onSwipe: (oldIndex, currentIndex, direction) async {
          cardMethod.editHistory(direction == CardSwiperDirection.right, index);
          setState(() {
            index++;
          });
          return true;
        },
        cardBuilder: (context, _, percentThresholdX, percentThresholdY) {
          if (percentThresholdX > 0) {
            _direction = Direction.right;
            // print('카드가 오른쪽으로 스와이프 중입니다.');
          } else if (percentThresholdX < 0) {
            _direction = Direction.left;
            // print('카드가 왼쪽으로 스와이프 중입니다.');
          } else {
            _direction = Direction.none;
          }
          // CardWidget 반환
          return CardWidget(index: index, direction: _direction);
        },
      ),
    );
  }
}
