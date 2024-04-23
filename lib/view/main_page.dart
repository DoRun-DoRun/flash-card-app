import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("main"),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.go('/category');
            },
          ),
        ],
      ),
    );
  }
}
