import 'package:flutter/material.dart';
import 'package:mob_app/utils/app_colors.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/responsive.dart';

class TipOfTheDayBannerView extends StatelessWidget {
  const TipOfTheDayBannerView({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);
    final cardWidth =
        MediaQuery.of(context).size.width / (isTabletDesktop ? 3.8 : 1.2);

    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              UIHelper.horizontalSpaceExtraSmall(),
              Flexible(
                child: Text(
                  "Tip of the day",
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: mobOrange,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                ),
              ),
              UIHelper.horizontalSpaceExtraSmall(),
              Icon(
                Icons.arrow_downward,
                color: mobGreen,
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          LimitedBox(
            maxHeight: 220.0,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.only(right: 10.0),
                padding: const EdgeInsets.all(10.0),
                width: cardWidth,
                decoration: BoxDecoration(
                  color: Colors.orange[100],
                  border: Border.all(color: mobGreen!, width: 2.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '🌟 Salt in Layers for Better Flavor!',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                UIHelper.verticalSpaceExtraSmall(),
                                Text(
                                  "Season your dish in layers throughout the cooking process which gradually ensures seasoning 👨‍🍳✨",
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          UIHelper.verticalSpaceExtraSmall(),
                        ],
                      ),
                    ),
                    UIHelper.horizontalSpaceSmall(),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/food3.jpg',
                        height: 90.0,
                        width: 90.0,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
