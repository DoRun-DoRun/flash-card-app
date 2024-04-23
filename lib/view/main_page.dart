import 'package:flash_card_app/model/card.dart';
import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  bool isAnswer = false;
  int index = 0;

  void _onTap() {
    setState(() {
      isAnswer = !isAnswer;
    });
  }

  void _onCheck(bool isCorrect) {
    ref.read(cardListProvider.notifier).editHistory(isCorrect, index);
    final cardList = ref.read(cardListProvider);

    setState(() {
      isAnswer = !isAnswer;
      if (index < cardList.length - 1) {
        index++;
      } else {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cardList = ref.watch(cardListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("main"),
        actions: [
          IconButton(
              onPressed: () {
                context.go('/category');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _onTap,
            child: Center(
              child: isAnswer
                  ? Column(
                      children: [
                        Text('Korean Word: ${cardList[index].korWord}'),
                        Text('History: ${cardList[index].history}'),
                      ],
                    )
                  : Text('English Word: ${cardList[index].engWord}'),
            ),
          ),
          isAnswer
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => _onCheck(true),
                      child: const Text("Correct Word"),
                    ),
                    ElevatedButton(
                      onPressed: () => _onCheck(false),
                      child: const Text("Wrong Word"),
                    ),
                  ],
                )
              : Container()
        ],
      ),
    );
  }
}
