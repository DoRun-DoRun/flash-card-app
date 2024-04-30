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
    return Container(
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
          const Text(
            "data",
            style: TextStyle(fontSize: 32),
          ),
          Image.asset('lib/assets/images/ImageSection.png')
        ],
      ),
    );
  }
}
