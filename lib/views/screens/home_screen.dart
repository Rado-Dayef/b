import 'package:fast_food_app/constants/app_imports.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.lightGrayColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(165.h),
          child: Container(
            height: 165.h,
            color: AppColors.transparentColor,
            child: Column(
              children: [
                const GapWidget(10),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                        child: const Icon(
                          Icons.sort_rounded,
                          color: AppColors.whiteColor,
                        ),
                      ),
                      InkWell(
                        onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                        child: const Icon(
                          Icons.search,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const GapWidget(20),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15.w,
                  ),
                  child: Text(
                    AppStrings.homeTitle,
                    style: AppFonts.font20White.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    left: 15.w,
                  ),
                  child: Text(
                    AppStrings.homeSubTitle,
                    style: AppFonts.font20White.copyWith(
                      color: AppColors.transparentWhiteColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const GapWidget(30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TabBarWidget(
                      onClick: () {},
                      AppStrings.burgerText,
                      isIndexTrue: true,
                    ),
                    const TabBarWidget(
                      AppStrings.pizzaText,
                    ),
                    const TabBarWidget(
                      AppStrings.cheeseText,
                    ),
                    const TabBarWidget(
                      AppStrings.pastaText,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            bottom: 50.h,
          ),
          child: BurgerScreen(controller),
        ),
        bottomSheet: Container(
          height: 50.h,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.lightGrayColor,
            boxShadow: [
              BoxShadow(
                color: AppColors.darkGrayColor,
                offset: const Offset(0, 0),
                blurRadius: 8.sp,
                spreadRadius: 2.sp,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.mail,
                  size: 30.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.favorite,
                  size: 30.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              Container(
                height: 40.sp,
                width: 40.sp,
                decoration: BoxDecoration(
                  color: AppColors.orangeColor,
                  borderRadius: BorderRadius.circular(80.sp),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.whiteColor,
                      offset: const Offset(0, 0),
                      blurRadius: 10.sp,
                      spreadRadius: 1.sp,
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shopping_cart,
                  size: 20.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.notifications_rounded,
                  size: 30.sp,
                  color: AppColors.whiteColor,
                ),
              ),
              InkWell(
                onTap: () => AppDefaults.defaultToast(AppStrings.thisFeatureIsNotAvailableToast),
                child: Icon(
                  Icons.person,
                  size: 30.sp,
                  color: AppColors.whiteColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
