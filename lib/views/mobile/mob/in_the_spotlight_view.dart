import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/mobile/spotlight_best_top_food_item.dart';
import 'package:mob_app/widgets/responsive.dart';

class InTheSpotlightView extends StatelessWidget {
  final restaurants = SpotlightBestTopFood.getSpotlightRecipes();

  InTheSpotlightView({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);
    final customWidth =
        MediaQuery.of(context).size.width / (isTabletDesktop ? 3.8 : 1.1);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          _buildSpotlightHeaderView(context),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 300.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: restaurants.length,
              itemBuilder: (context, index) => SizedBox(
                width: customWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][0]),
                    SpotlightBestTopFoodItem(restaurant: restaurants[index][1])
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container _buildSpotlightHeaderView(BuildContext context) => Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                const Icon(Icons.shopping_basket, size: 20.0),
                UIHelper.horizontalSpaceSmall(),
                Text(
                  'In the Spotlight!',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontSize: 20.0),
                )
              ],
            ),
            UIHelper.verticalSpaceExtraSmall(),
            Text(
              'Explore dishes on spotlight now!',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
      );
}
