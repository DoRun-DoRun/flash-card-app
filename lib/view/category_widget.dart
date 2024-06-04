import 'package:flash_card_app/model/category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.wordCard,
  });

  final CategoryCode wordCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/category/${wordCard.english}');
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: const Color(0xFFD9D9D9),
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              wordCard.icon,
              size: 32,
              color: const Color(0xff444444),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              wordCard.korean,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xFF444444),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
