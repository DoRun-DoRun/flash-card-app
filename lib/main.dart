import 'package:flash_card_app/utill/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      theme: ThemeData(
        textTheme: const TextTheme(
          titleMedium: TextStyle(
            fontFamily: 'Jalnan',
            fontSize: 20,
            color: Colors.black,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Jalnan',
            color: Colors.black,
            fontSize: 32,
          ),
          bodyMedium: TextStyle(
            fontFamily: "Jeju",
            fontSize: 18,
            color: Color(0xFF666666),
          ),
        ),
      ),
    );
  }
}
