import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/app_colors.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/custom_divider_view.dart';
import 'package:mob_app/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import 'all_dishes/all_dishes_screen.dart';
import 'cuisines/cuisines_view.dart';
import 'food_groceries_availability_view.dart';
import 'aldi/aldi_view.dart';
import 'in_the_spotlight_view.dart';
import 'mob_premium/mob_premium_view.dart';
import 'popular_chefs_view.dart';
import 'popular_categories_view.dart';
import 'restaurants/restaurant_vertical_list_view.dart';
import 'tip_of_the_day_banner_view.dart';
import 'top_picks_for_you_view.dart';

class MobHomeScreen extends StatelessWidget {
  const MobHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const FoodAvailabilityView(),
                    TopPicksForYouView(),
                    MobPremiumView(),
                    const CustomDividerView(),
                    CuisinesView(),
                    const CustomDividerView(),
                    InTheSpotlightView(),
                    const CustomDividerView(),
                    PopularChefsView(),
                    const CustomDividerView(),
                    const TipOfTheDayBannerView(),
                    const AldiView(),
                    const CustomDividerView(),
                    PopularCategoriesView(),
                    const CustomDividerView(),
                    RestaurantVerticalListView(
                      title: 'All Dishes',
                      restaurants: SpotlightBestTopFood.getAllDishes(),
                      isAllRestaurantNearby: true,
                    ),
                    const SeeAllDishesButton(),
                    const LiveForFoodView(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildAppBar(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        height: 60.0,
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/mob.png',
              height: 100,
              width: 100,
            ),
            const Spacer(),
            const Icon(Icons.local_offer),
            UIHelper.horizontalSpaceExtraSmall(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Join Mob',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 14.0),
                ),
              ),
              onTap: () =>
                  _launchUrl(Uri.parse('https://www.mob.co.uk/signup')),
            ),
          ],
        ),
      );

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}

class SeeAllDishesButton extends StatelessWidget {
  const SeeAllDishesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 50.0,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: darkOrange),
        onPressed: isTabletDesktop
            ? () {}
            : () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AllRestaurantsScreen(),
                  ),
                );
              },
        child: Text(
          'See all dishes',
          style: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(color: Colors.white, fontSize: 19.0),
        ),
      ),
    );
  }
}

class LiveForFoodView extends StatelessWidget {
  const LiveForFoodView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      padding: const EdgeInsets.all(15.0),
      height: 400.0,
      color: Colors.grey[200],
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'LIVE\nFOR\nFOOD',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.grey[400],
                      fontSize: 80.0,
                      letterSpacing: 0.2,
                      height: 0.8,
                    ),
              ),
              UIHelper.verticalSpaceLarge(),
              Text(
                'MADE WITH 💙',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              ),
              Text(
                'MOB, UK',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.grey),
              ),
              UIHelper.verticalSpaceExtraLarge(),
              Row(
                children: <Widget>[
                  Container(
                    height: 1.0,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
          Positioned(
            left: 140.0,
            top: 90.0,
            child: Image.asset(
              'assets/images/burger.png',
              height: 80.0,
              width: 80.0,
            ),
          )
        ],
      ),
    );
  }
}
