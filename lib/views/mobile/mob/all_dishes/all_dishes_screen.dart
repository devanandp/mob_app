import 'package:flutter/material.dart';
import 'package:mob_app/models/all_restaurant.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:url_launcher/url_launcher.dart';

import '../groceries/grocery_screen.dart';

class AllRestaurantsScreen extends StatelessWidget {
  const AllRestaurantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _FoodHorizontalListView(),
                    _CategoriesView(),
                    const AllDishesListView(
                      title: 'ALL DISHES',
                    ),
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
        margin: const EdgeInsets.only(left: 5.0, right: 15.0),
        height: 60.0,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            UIHelper.horizontalSpaceSmall(),
            Text(
              'Trending Now',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            UIHelper.horizontalSpaceSmall(),
            const Spacer(),
            const Icon(Icons.local_offer),
            UIHelper.horizontalSpaceExtraSmall(),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'Go Premium',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 16.0),
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

class _FoodHorizontalListView extends StatelessWidget {
  final restaurants = SpecialityCategories.getPopularBrands();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(
            children: <Widget>[
              Image.asset(
                restaurants[index].image,
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 2,
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
                color: Colors.white,
                child: const Text('TRY NOW'),
              ),
              Positioned(
                bottom: 1.0,
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  height: 70.0,
                  color: Colors.black38,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text(
                    restaurants[index].name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoriesView extends StatelessWidget {
  final categories = SpecialityCategories.getPopularTypes();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 115.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => Container(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            width: 60.0,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 40.0,
                    color: Colors.grey[200],
                  ),
                ),
                Positioned(
                  top: 20.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Image.asset(
                        categories[index].image,
                        height: 30.0,
                        width: 30.0,
                        fit: BoxFit.cover,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      Flexible(
                        child: Text(
                          categories[index].name,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontSize: 13.0),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
