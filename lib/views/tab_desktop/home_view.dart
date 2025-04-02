import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/views/mobile/mob/food_groceries_availability_view.dart';
import 'package:mob_app/views/mobile/mob/in_the_spotlight_view.dart';
import 'package:mob_app/views/mobile/mob/mob_premium/mob_premium_view.dart';
import 'package:mob_app/views/mobile/mob/popular_chefs_view.dart';
import 'package:mob_app/views/mobile/mob/popular_categories_view.dart';
import 'package:mob_app/views/mobile/mob/restaurants/restaurant_vertical_list_view.dart';
import 'package:mob_app/views/mobile/mob/tip_of_the_day_banner_view.dart';
import 'package:mob_app/views/mobile/mob/mob_home_screen.dart';
import 'package:mob_app/widgets/custom_divider_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, this.expandFlex = 4});

  final int expandFlex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: expandFlex,
      child: Container(
        padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
        color: Colors.grey[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _Search(),
            _Body(),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MobPremiumView(),
            PopularChefsView(),
            const CustomDividerView(),
            InTheSpotlightView(),
            const CustomDividerView(),
            PopularCategoriesView(),
            const CustomDividerView(),
            const TipOfTheDayBannerView(),
            const CustomDividerView(),
            const CustomDividerView(),
            const FoodAvailabilityView(),
            const CustomDividerView(),
            RestaurantVerticalListView(
              title: 'Popular Recipes',
              restaurants: SpotlightBestTopFood.getAllDishes(),
            ),
            const CustomDividerView(),
            RestaurantVerticalListView(
              title: 'All Recipes',
              restaurants: SpotlightBestTopFood.getAllDishes(),
              isAllRestaurantNearby: true,
            ),
            const SeeAllDishesButton(),
            const LiveForFoodView()
          ],
        ),
      ),
    );
  }
}

class _Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
      padding: const EdgeInsets.symmetric(vertical: 17.0, horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 2.0,
            spreadRadius: 0.0,
            offset: const Offset(2.0, 2.0),
          )
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search_outlined),
          UIHelper.horizontalSpaceMedium(),
          Expanded(
            child: Text(
              'What would you like to eat?',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          UIHelper.horizontalSpaceMedium(),
          const Icon(Icons.filter_list_outlined)
        ],
      ),
    );
  }
}
