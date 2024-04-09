import 'package:flash_card_app/view/categoryPage.dart';
import 'package:flash_card_app/view/categotyListPage.dart';
import 'package:flash_card_app/view/mainPage.dart';
import 'package:flash_card_app/view/tutorialPage.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => MainPage(),
  ),
  GoRoute(
    path: '/tutorial',
    builder: (context, state) => TutorialPage(),
  ),
  GoRoute(
    path: '/category',
    builder: (context, state) => CategoryPage(),
  ),
  GoRoute(
    path: '/category/list',
    builder: (context, state) => CategoryListPage(),
  )
]);
