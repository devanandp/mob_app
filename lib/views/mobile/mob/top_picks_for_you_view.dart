import 'package:flutter/material.dart';
import 'package:mob_app/models/top_picks_food.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/views/mobile/mob/restaurants/dishes_detail_screen.dart';

class TopPicksForYouView extends StatelessWidget {
  final foods = TopPicksFood.getTopPicksfoods();

  TopPicksForYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(Icons.thumb_up, size: 20.0),
              UIHelper.horizontalSpaceSmall(),
              Text(
                'Top Picks For You',
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(fontSize: 20.0),
              )
            ],
          ),
          UIHelper.verticalSpaceLarge(),
          LimitedBox(
            maxHeight: 188.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: foods.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RestaurantDetailScreen(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(10.0),
                  width: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                            )
                          ],
                        ),
                        child: Image.asset(
                          foods[index].image,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Flexible(
                        child: Text(
                          foods[index].name,
                          maxLines: 2,
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        foods[index].minutes,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey[700],
                              fontSize: 13.0,
                            ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
