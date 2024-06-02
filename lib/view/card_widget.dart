import 'package:flash_card_app/model/card.dart';
import 'package:flash_card_app/repository/card_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CardWidget extends ConsumerStatefulWidget {
  final int index;
  final Direction direction;

  const CardWidget({super.key, required this.index, required this.direction});

  @override
  ConsumerState<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends ConsumerState<CardWidget> {
  bool isAnswer = false;

  @override
  Widget build(BuildContext context) {
    final cardList = ref.watch(cardListProvider);
    double screenHeight = MediaQuery.of(context).size.height;
    double percentageHeight = 0.7;
    // 계산된 높이
    double height = screenHeight * percentageHeight;

    return Container(
      width: double.infinity,
      height: height,
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
        color: widget.direction == Direction.right
            ? const Color(0xFFc9e7d0)
            : widget.direction == Direction.left
                ? const Color(0xFFF2CACA)
                : Colors.white,
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
            cardList[widget.index].displayWord,
            style: const TextStyle(fontSize: 32),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Image.asset(
              'lib/assets/images/ImageSection.png',
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
