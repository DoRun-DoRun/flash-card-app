import 'package:flash_card_app/view/category_page.dart';
import 'package:flash_card_app/view/category_list_page.dart';
import 'package:flash_card_app/view/main_page.dart';
import 'package:flash_card_app/view/tutorial_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const MainPage(),
  ),
  GoRoute(
    path: '/tutorial',
    builder: (context, state) => const TutorialPage(),
  ),
  GoRoute(
    path: '/category',
    builder: (context, state) => const CategoryPage(),
  ),
  GoRoute(
    path: '/category/list',
    builder: (context, state) => const CategoryListPage(),
  )
]);
