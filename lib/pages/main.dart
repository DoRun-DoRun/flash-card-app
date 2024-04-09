import 'package:flash_card_app/pages/setting.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'main.g.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.
// @riverpod
// String helloWorld(HelloWorldRef ref) {
//   return 'Hello world';
// }

void main() {
  runApp(const MaterialApp(
    home: MyAppHome(),
  ));
  // For widgets to be able to read providers, we need to wrap the entire
  // application in a "ProviderScope" widget.
  // This is where the state of our providers will be stored.
  // const ProviderScope(
  //   child: MyApp(),
  // ),
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Example')),
      body: Center(
        // button to navigate to the next page
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingPage()),
            );
          },
          child: const Text('Go to the next page'),
        ),
      ),
    );
  }
}

// Extend ConsumerWidget instead of StatelessWidget, which is exposed by Riverpod
// class MyApp extends ConsumerWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final String value = ref.watch(helloWorldProvider);

//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Example')),
//         body: Center(
//           child: Text(value),
//         ),
//       ),
//     );
//   }
// }
