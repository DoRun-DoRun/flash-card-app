import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
