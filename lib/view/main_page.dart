import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flash_card_app/view/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                context.push('/category');
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: const CardWidget(),
    );
  }
}
