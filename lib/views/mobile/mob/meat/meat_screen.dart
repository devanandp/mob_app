import 'package:flutter/material.dart';
import 'package:mob_app/models/spotlight_best_top_food.dart';
import 'package:mob_app/utils/app_colors.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/custom_divider_view.dart';

class MeatScreen extends StatelessWidget {
  const MeatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildAppBar(context),
            _SearchView(),
            UIHelper.verticalSpaceMedium(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _CardView(),
                    _StoresListView(
                      title: 'Nearby stores',
                      desc: 'Trusted for best buying experience',
                    ),
                    const CustomDividerView(dividerHeight: 15.0),
                    _StoresListView(
                      title: 'Faraway stores',
                      desc: 'Additional distance fee applicable',
                    )
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
        height: 80.0,
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context)),
            UIHelper.horizontalSpaceSmall(),
            Container(
              height: 32.0,
              width: 32.0,
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
                borderRadius: BorderRadius.circular(16.2),
              ),
              child: const Icon(
                Icons.location_on,
                color: Colors.orange,
                size: 25.0,
              ),
            ),
            UIHelper.horizontalSpaceSmall(),
            Text(
              'Fresh Meat Stores',
              style: Theme.of(context).textTheme.titleLarge,
            )
          ],
        ),
      );
}

class _SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        const CustomDividerView(dividerHeight: 3.0),
        Container(
          padding: const EdgeInsets.only(left: 15.0, top: 2.0, bottom: 2.0),
          margin: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey[400]!),
            borderRadius: BorderRadius.circular(2.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 3.0,
                spreadRadius: 5.0,
              )
            ],
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for stores near you',
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w600,
                        ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              UIHelper.horizontalSpaceMedium(),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      padding: const EdgeInsets.all(10.0),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'No-contact Delivery',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      UIHelper.verticalSpaceExtraSmall(),
                      Text(
                        'Have your order dropped of at your door or gate for added safety',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                UIHelper.verticalSpaceExtraSmall(),
                TextButton(
                  child: Text(
                    'Know More',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: mobOrange),
                  ),
                  onPressed: () {},
                )
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
    );
  }
}

class _StoresListView extends StatelessWidget {
  final String title;
  final String desc;

  final foods = SpotlightBestTopFood.getAllDishes();

  _StoresListView({
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: _ListViewHeader(
            title: title,
            desc: desc,
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: foods.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2.0,
                        )
                      ],
                    ),
                    child: Image.asset(
                      foods[index].image,
                      height: 80.0,
                      width: 80.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                UIHelper.horizontalSpaceSmall(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      foods[index].name,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16.0),
                    ),
                    Text(foods[index].desc,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.grey[800], fontSize: 13.5)),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      foods[index].premiumLevel,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.red[900], fontSize: 13.0),
                    ),
                    const Divider(),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.fastfood,
                          size: 14.0,
                          color: Colors.green[400],
                        ),
                        UIHelper.horizontalSpaceSmall(),
                        const Text('200+ Items available')
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _ListViewHeader extends StatelessWidget {
  final String title;
  final String desc;

  const _ListViewHeader({
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              color: Colors.blue[300],
            ),
            UIHelper.horizontalSpaceSmall(),
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        UIHelper.verticalSpaceExtraSmall(),
        Text(desc)
      ],
    );
  }
}
