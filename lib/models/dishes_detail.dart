class DishesDetail {
  const DishesDetail({
    required this.title,
    this.image = '',
    this.desc = '',
  });

  final String title;
  final String image;
  final String desc;

  static List<DishesDetail> getRecommendedDishes() {
    return const [
      DishesDetail(
        title: 'Idly(2Pcs) (Breakfast)',
        image: 'assets/images/food1.jpg',
        desc:
            'A healthy breakfast item and an authentic south indian delicacy! Steamed and fluffy rice cake..more',
      ),
      DishesDetail(
        title: 'Sambar Idly (2Pcs)',
        image: 'assets/images/food2.jpg',
      ),
      DishesDetail(
        title: 'Ghee Pongal',
        image: 'assets/images/food3.jpg',
        desc:
            'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
      DishesDetail(
        title: 'Poori (1Set)',
        image: 'assets/images/food4.jpg',
      ),
      DishesDetail(
        title: 'Podi Idly(2Pcs)',
        image: 'assets/images/food5.jpg',
      ),
      DishesDetail(
        title: 'Mini Idly with Sambar',
        image: 'assets/images/food6.jpg',
        desc:
            'Cute, button idlis with authentic. South Indian sambar and coconut chutney gives the per..more',
      ),
    ];
  }
}
