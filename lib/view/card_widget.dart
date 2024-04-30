import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardWidget extends ConsumerStatefulWidget {
  const CardWidget({super.key});

  @override
  ConsumerState<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends ConsumerState<CardWidget> {
  bool isAnswer = false;
  @override
  Widget build(BuildContext context) {
    final cardList = ref.watch(cardListProvider);
    final text = cardList[0].korWord.toString();
    return GestureDetector(
      onTap: () => {
        setState(() {
          isAnswer = !isAnswer;
        })

        //  if(isAnswer)text
      },
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.only(
          bottom: 54,
          right: 16,
          left: 16,
        ),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 12,
              offset: const Offset(12, 12),
            )
          ],
          color: Colors.amber,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              isAnswer ? cardList[0].korWord : cardList[0].engWord,
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Image.asset('lib/assets/images/ImageSection.png',
                    fit: BoxFit.cover),
              ),
            )
          ],
        ),
      ),
    );
  }
}
