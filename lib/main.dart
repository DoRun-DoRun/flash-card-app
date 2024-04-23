import 'package:flash_card_app/utill/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const wordData = [
  {
    "category": "CategoryCode.color",
    "korWord": "빨간색",
    "engWord": "Red",
    "image": "https://example.com/images/hello.jpg",
    "history": [false, false, false, false, false]
  },
  {
    "category": "CategoryCode.animal",
    "korWord": "고양이",
    "engWord": "Cat",
    "image": "https://example.com/images/cat.jpg",
    "history": [false, false, false, false, false]
  },
  {
    "category": "CategoryCode.animal",
    "korWord": "강아지",
    "engWord": "Dog",
    "image": "https://example.com/images/love.jpg",
    "history": [false, false, false, false, false]
  },
  {
    "category": "CategoryCode.color",
    "korWord": "파란색",
    "engWord": "Blue",
    "image": "https://example.com/images/music.jpg",
    "history": [false, false, false, false, false]
  },
  {
    "category": "CategoryCode.plant",
    "korWord": "나무",
    "engWord": "Tree",
    "image": "https://example.com/images/happiness.jpg",
    "history": [false, false, false, false, false]
  }
];

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
