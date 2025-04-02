import 'package:flutter/material.dart';
import 'package:mob_app/models/popular_chefs.dart';
import 'package:mob_app/utils/ui_helper.dart';

class PopularChefsView extends StatelessWidget {
  final chefs = PopularChefs.getPopularChefs();

  PopularChefsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          UIHelper.verticalSpaceSmall(),
          _buildPopularHeader(context),
          LimitedBox(
            maxHeight: 190.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: chefs.length,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300]!,
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              chefs[index].image,
                              height: 80.0,
                              width: 80.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        UIHelper.verticalSpaceSmall(),
                        Text(
                          chefs[index].name,
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildPopularHeader(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Popular Chefs',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(fontSize: 20.0),
          ),
          UIHelper.verticalSpaceExtraSmall(),
          Text(
            'Most ordered from around your locality',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey),
          ),
        ],
      );
}
