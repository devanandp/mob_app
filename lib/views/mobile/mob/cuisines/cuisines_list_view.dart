import 'package:flutter/material.dart';
import 'package:mob_app/utils/ui_helper.dart';

import '../groceries/grocery_screen.dart';

class CuisinesListView extends StatelessWidget {
  const CuisinesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset(
                    'assets/images/banner1.png',
                    height: MediaQuery.of(context).size.height / 5.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  UIHelper.verticalSpaceMedium(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'SOUTH INDIAN DELIGHTS',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 19.0),
                        ),
                        UIHelper.verticalSpaceSmall(),
                        const Text(
                          'Feast on authentic South Indian fare from top restaurants near you',
                        ),
                        UIHelper.verticalSpaceSmall(),
                        const Divider(),
                      ],
                    ),
                  ),
                  const AllDishesListView(
                    title: 'SEE ALL RESTAURANTS',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.0,
            left: 2.4,
            child: SafeArea(
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
            ),
          ),
        ],
      ),
    );
  }
}
