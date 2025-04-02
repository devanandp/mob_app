import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:mob_app/widgets/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class MobPremiumView extends StatelessWidget {
  final List<String> images = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner1.png',
    'assets/images/banner2.png',
  ];

  MobPremiumView({super.key});

  @override
  Widget build(BuildContext context) {
    final isTabletDesktop = Responsive.isTabletDesktop(context);

    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15.0),
        height: isTabletDesktop ? 260.0 : 180.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(isTabletDesktop ? 13.0 : 10.0),
        ),
        child: Swiper(
          itemHeight: 100,
          duration: 500,
          itemWidth: double.infinity,
          pagination: const SwiperPagination(),
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) => Image.asset(
            images[index],
            fit: BoxFit.fill,
          ),
          autoplay: true,
          viewportFraction: 1.0,
          scale: 0.9,
        ),
      ),
      onTap: () => _launchUrl(Uri.parse('https://www.mob.co.uk/signup')),
    );
  }

  Future<void> _launchUrl(Uri url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
