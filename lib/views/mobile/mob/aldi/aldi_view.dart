import 'package:flutter/material.dart';
import 'package:mob_app/utils/app_colors.dart';
import 'package:mob_app/utils/ui_helper.dart';
import 'package:mob_app/widgets/dotted_seperator_view.dart';

class AldiView extends StatelessWidget {
  const AldiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('ALDI',
                        style: Theme.of(context).textTheme.headlineMedium),
                    UIHelper.verticalSpaceSmall(),
                    Text(
                      'Anything you need!\nBuy and pick-up anything,\nfrom anywhere in your city',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(color: Colors.grey),
                    )
                  ],
                ),
              ),
              UIHelper.horizontalSpaceMedium(),
              LimitedBox(
                maxWidth: 100.0,
                child: Image.asset(
                  'assets/images/aldi.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          UIHelper.verticalSpaceMedium(),
          const DottedSeperatorView(),
          UIHelper.verticalSpaceMedium(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _GenieCardView(
                title: 'Buy\nAnything',
                desc: 'Stationery\nFood\nGrocery\n& more',
                image: 'assets/images/pizza-delivery-boy.png',
                onTap: () {},
              ),
              _GenieCardView(
                title: 'Go &\nCollect',
                desc: 'Lunchbox\nCharger\nDocuments\nClothes',
                image: 'assets/images/delivery-boy.png',
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}

class _GenieCardView extends StatelessWidget {
  const _GenieCardView(
      {required this.title,
      required this.desc,
      required this.image,
      required this.onTap});

  final String title;
  final String desc;
  final String image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey[200]!,
                blurRadius: 2.0,
                offset: const Offset(1.0, 3.0),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(fontSize: 22.0),
              ),
              UIHelper.verticalSpaceMedium(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        desc,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      UIHelper.verticalSpaceSmall(),
                      ClipOval(
                        child: Container(
                          alignment: Alignment.center,
                          color: mobGreen,
                          height: 25.0,
                          width: 25.0,
                          child: const Icon(
                            Icons.arrow_forward_ios,
                            size: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      UIHelper.verticalSpaceMedium(),
                    ],
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Flexible(
                    child: Image.asset(
                      image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  UIHelper.horizontalSpaceExtraSmall(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
