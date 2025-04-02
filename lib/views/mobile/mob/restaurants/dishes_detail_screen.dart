import 'package:flutter/material.dart';
import 'package:mob_app/models/dishes_detail.dart';
import 'package:mob_app/utils/app_colors.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/custom_divider_view.dart';
import 'package:mob_app/widgets/veg_badge_view.dart';

class RestaurantDetailScreen extends StatefulWidget {
  const RestaurantDetailScreen({super.key});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        actions: <Widget>[
          const Icon(Icons.favorite_border),
          UIHelper.horizontalSpaceSmall(),
          const Icon(Icons.search),
          UIHelper.horizontalSpaceSmall(),
        ],
      ),
      body: _RestaurantDetailHomeView(_tabController!),
    );
  }
}

class _RestaurantDetailHomeView extends StatelessWidget {
  const _RestaurantDetailHomeView(this.tabController);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    'assets/images/food2.jpg',
                    width: double.infinity,
                    height: 200.0,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    bottom: 10.0,
                    left: 10.0,
                    child: Text(
                      'Beef Chow Mein',
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 36.0,
                            color: Colors.white,
                          ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceSmall(),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Chinese',
                    style: Theme.of(context).textTheme.bodyLarge),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text('Tasty and Healthy',
                      style: Theme.of(context).textTheme.bodyLarge)),
              UIHelper.verticalSpaceMedium(),
              const CustomDividerView(dividerHeight: 1.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildVerticalStack(context, '4.1/5', 'Stars'),
                  _buildVerticalStack(context, '30 mins', 'Cooking Time'),
                  _buildVerticalStack(context, '4', 'Servings'),
                ],
              ),
              const CustomDividerView(dividerHeight: 1.0),
              UIHelper.verticalSpaceSmall(),
            ],
          ),
          TabBar(
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            controller: tabController,
            indicatorColor: mobOrange,
            labelStyle: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontSize: 16.0, color: mobOrange),
            unselectedLabelStyle:
                Theme.of(context).textTheme.titleSmall!.copyWith(
                      fontSize: 16.0,
                      color: Colors.grey[200],
                    ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(child: Text('Ingredients')),
              Tab(child: Text('Steps')),
              Tab(child: Text('Nutrition')),
            ],
          ),
          UIHelper.verticalSpaceSmall(),
          const CustomDividerView(dividerHeight: 8.0),
          SizedBox(
            height: 500,
            child: TabBarView(
              controller: tabController,
              children: const [
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Text(
                    "Ingredients\n\n\n"
                    "1. 2 tbsp olive oil\n"
                    "2. 1 tsp ginger, grated\n"
                    "3. 1 red chilli, minced\n"
                    "4. 1 tsp turmeric powder\n"
                    "5. 400ml coconut milk\n"
                    "6. 500ml chicken stock\n"
                    "7. 200g rice noodles\n"
                    "8. 1 lime, cut into wedges\n"
                    "9. 2 tbsp sesame seeds, toasted\n"
                    "10. Fresh coriander and mint leaves",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Step 1.\n\n"
                      "Squeeze the sausagemeat out of the casings and discard the skins. Finely grate the ginger and mince the chilli. Pick the coriander and mint leaves, discarding the mint stems and thinly slicing the coriander stems.\n\n"
                      "Step 2.\n\n"
                      "Heat a drizzle of olive oil in a large saucepan over medium-high heat. Add the sausagemeat and cook for 8-10 mins, breaking it up with a spoon, until golden and crispy. Transfer to a plate.\n\n"
                      "Step 3.\n\n"
                      "Add the ginger, chilli and turmeric to the same pan and stir-fry for a few seconds until fragrant. Pour in the coconut milk and stock, scraping up any caramelised bits from the bottom of the pan. Season with salt and black pepper, then bring to the boil.\n\n"
                      "Step 4.\n\n"
                      "Drop in the noodles and cook following pack instructions. Taste and adjust the seasoning with lime juice, salt and black pepper if needed. Add a splash of water if you want it saucier.\n\n"
                      "Step 5.\n\n"
                      "Divide the noodles between bowls. Top with the crispy sausage then ladle over the sauce. Top with toasted sesame seeds, fresh herbs and a wedge of lime."),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Nutrition Information\n\n"
                    "Calories: 450 kcal\n"
                    "Protein: 25 g\n"
                    "Carbohydrates: 50 g\n"
                    "Fat: 20 g",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          const CustomDividerView(dividerHeight: 15.0),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Recommended',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(fontSize: 18.0),
            ),
          ),
          _RecommendedFoodView(),
          const CustomDividerView(dividerHeight: 15.0),
        ],
      ),
    );
  }

  Expanded _buildVerticalStack(
          BuildContext context, String title, String subtitle) =>
      Expanded(
        child: SizedBox(
          height: 60.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w900,
                    color: mobGreen),
              ),
              UIHelper.verticalSpaceExtraSmall(),
              Text(subtitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 13.0))
            ],
          ),
        ),
      );
}

class _RecommendedFoodView extends StatelessWidget {
  final foods = DishesDetail.getRecommendedDishes();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
          foods.length,
          (index) => Container(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    foods[index].image,
                    fit: BoxFit.fill,
                  ),
                ),
                UIHelper.verticalSpaceExtraSmall(),
                SizedBox(
                  height: 100.0,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'BREAKFAST',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 10.0,
                              color: Colors.grey[700],
                            ),
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Row(
                        children: <Widget>[
                          const VegBadgeView(),
                          UIHelper.horizontalSpaceExtraSmall(),
                          Flexible(
                            child: Text(
                              foods[index].title,
                              maxLines: 1,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      UIHelper.verticalSpaceMedium(),
                      const SaveToCollectionButton()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveToCollectionButton extends StatelessWidget {
  const SaveToCollectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 25.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SAVE ',
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.green),
          ),
          const Icon(Icons.bookmark_border, color: Colors.green),
        ],
      ),
    );
  }
}
