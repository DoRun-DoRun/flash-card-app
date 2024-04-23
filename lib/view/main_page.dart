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
  WordCard? randomCard;

  void _onTap() {
    setState(() {
      isAnswer = !isAnswer;
    });
  }

  void _onRefresh() {
    setState(() {
      isAnswer = false;
      ref.refresh(randomCardProvider);
    });
  }

  @override
  Widget build(BuildContext context) {
    final randomCard = ref.watch(randomCardProvider);

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
                  ? Text('Korean Word: ${randomCard.korWord}')
                  : Text('English Word: ${randomCard.engWord}'),
            ),
          ),
          isAnswer
              ? ElevatedButton(
                  onPressed: _onRefresh,
                  child: const Text("Random Word"),
                )
              : Container()
        ],
      ),
    );
  }
}
