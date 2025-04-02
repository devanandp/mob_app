import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/views/mobile/mob/restaurants/dishes_detail_screen.dart';
import 'package:mob_app/widgets/responsive.dart';

class SpotlightBestTopFoodItem extends StatelessWidget {
  const SpotlightBestTopFoodItem({
    super.key,
    required this.restaurant,
  });

  final SpotlightBestTopFood restaurant;

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return InkWell(
      onTap: isTabletDesktop
          ? () {}
          : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RestaurantDetailScreen(),
                ),
              );
            },
      child: Container(
        margin: const EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 2.0,
                  )
                ],
              ),
              child: Image.asset(
                restaurant.image,
                height: 100.0,
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            UIHelper.horizontalSpaceSmall(),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    restaurant.name,
                    maxLines: 1,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 18.0),
                  ),
                  Text(
                    restaurant.desc,
                    maxLines: 2,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.grey[800], fontSize: 13.5),
                  ),
                  UIHelper.verticalSpaceSmall(),
                  Text(
                    restaurant.premiumLevel,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.red[900], fontSize: 13.0),
                  ),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
