class SpotlightBestTopFood {
  const SpotlightBestTopFood({
    required this.image,
    required this.name,
    required this.desc,
    required this.premiumLevel,
  });

  final String image;
  final String name;
  final String desc;
  final String premiumLevel;

  static List<List<SpotlightBestTopFood>> getSpotlightRecipes() {
    return const [
      [
        SpotlightBestTopFood(
          image: 'assets/images/food1.jpg',
          name: 'Aubergine Parmigiana',
          desc: 'Italian',
          premiumLevel: 'FREE',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food2.jpg',
          name: 'Red Pesto Gnocchi',
          desc: 'Italian',
          premiumLevel: 'PREMIUM',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food3.jpg',
          name: 'Beetroot & Feta Pesto',
          desc: 'Italian',
          premiumLevel: 'PREMIUM',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food4.jpg',
          name: 'Butter Naan with Mutton Rogan Jhosh',
          desc: 'North Indian',
          premiumLevel: 'PREMIUM',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food5.jpg',
          name: 'Parota with Salna',
          desc: 'South Indian',
          premiumLevel: 'FREE',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food6.jpg',
          name: 'Mutton Biryani',
          desc: 'South Indian',
          premiumLevel: 'FREE',
        ),
      ],
      [
        SpotlightBestTopFood(
          image: 'assets/images/food7.jpg',
          name: 'Ceaser Salad',
          desc: 'Italian',
          premiumLevel: 'FREE',
        ),
        SpotlightBestTopFood(
          image: 'assets/images/food8.jpg',
          name: 'Spicy Pesto Paccheri',
          desc: 'Italian',
          premiumLevel: 'FREE',
        ),
      ]
    ];
  }

  static List<SpotlightBestTopFood> getAllDishes() {
    return const [
      SpotlightBestTopFood(
        image: 'assets/images/food1.jpg',
        name: 'Aubergine Parmigiana',
        desc: 'Italian',
        premiumLevel: 'FREE',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food2.jpg',
        name: 'Red Pesto Gnocchi',
        desc: 'Italian',
        premiumLevel: 'PREMIUM',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food3.jpg',
        name: 'Beetroot & Feta Pesto',
        desc: 'Italian',
        premiumLevel: 'PREMIUM',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food4.jpg',
        name: 'Butter Naan with Mutton Rogan Jhosh',
        desc: 'North Indian',
        premiumLevel: 'PREMIUM',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food5.jpg',
        name: 'Parota with Salna',
        desc: 'South Indian',
        premiumLevel: 'FREE',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food6.jpg',
        name: 'Mutton Biryani',
        desc: 'South Indian',
        premiumLevel: 'FREE',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food7.jpg',
        name: 'Ceaser Salad',
        desc: 'Italian',
        premiumLevel: 'FREE',
      ),
      SpotlightBestTopFood(
        image: 'assets/images/food8.jpg',
        name: 'Spicy Pesto Paccheri',
        desc: 'Italian',
        premiumLevel: 'FREE',
      ),
    ];
  }
}
