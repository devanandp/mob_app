import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/mobile/search_food_list_item_view.dart';
import 'package:mob_app/widgets/responsive.dart';

class AllDishesScreen extends StatelessWidget {
  const AllDishesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const _AllDishesHeaderView(),
            UIHelper.verticalSpaceMedium(),
            const AllDishesListView(
              title: '156 Dishes',
            ),
          ],
        ),
      ),
    );
  }
}

class _AllDishesHeaderView extends StatelessWidget {
  const _AllDishesHeaderView();

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return Stack(
      children: <Widget>[
        Image.asset(
          'assets/images/banner1.png',
          height: MediaQuery.of(context).size.height / 2.1,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        if (!isTabletDesktop)
          Positioned(
            top: 40.0,
            left: 0.4,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 28.0,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
      ],
    );
  }
}

class AllDishesListView extends StatelessWidget {
  const AllDishesListView({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final restaurants = SpotlightBestTopFood.getAllDishes();

    final headerStyle = Theme.of(context)
        .textTheme
        .bodyLarge!
        .copyWith(fontWeight: FontWeight.w500, fontSize: 13.0);

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: headerStyle,
              ),
              const Spacer(),
              const Icon(Icons.filter_list),
              UIHelper.horizontalSpaceSmall(),
              Text('SORT/FILTER', style: headerStyle)
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: restaurants.length,
            itemBuilder: (context, index) => SearchFoodListItemView(
              food: restaurants[index],
            ),
          )
        ],
      ),
    );
  }
}
