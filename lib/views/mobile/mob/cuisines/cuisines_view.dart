import 'package:flutter/material.dart';
import 'package:mob_app/models/cuisines_list.dart';
import 'package:mob_app/utils/ui_helper.dart';

import 'cuisines_list_view.dart';

class CuisinesView extends StatelessWidget {
  final restaurants = CuisinesList.getCuisinesList();

  CuisinesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      height: 150.0,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: restaurants.length,
        itemBuilder: (context, index) => InkWell(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    restaurants[index].image,
                    height: 80.0,
                    width: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                UIHelper.verticalSpaceExtraSmall(),
                Text(
                  restaurants[index].name,
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: Colors.grey[700]),
                )
              ],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CuisinesListView(),
              ),
            );
          },
        ),
      ),
    );
  }
}
