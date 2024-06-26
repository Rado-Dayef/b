import 'package:fast_food_app/constants/app_imports.dart';

class AppPages {
  static List<GetPage> appPages = [
    GetPage(
      name: AppStrings.homeRoute,
      page: () => const HomeScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.cartRoute,
      page: () => const CartScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: AppStrings.detailsRoute,
      page: () => const DetailsScreen(),
      transition: Transition.noTransition,
    ),
  ];
}
