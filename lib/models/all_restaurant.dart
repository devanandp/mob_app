import 'cuisines_list.dart';

class SpecialityCategories {
  const SpecialityCategories({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<SpecialityCategories> getPopularTypes() {
    return const [
      SpecialityCategories(
        image: 'assets/icons/offer.png',
        name: 'Healthy\nFood',
      ),
      SpecialityCategories(
        image: 'assets/icons/world-cup.png',
        name: 'Protein\nRich',
      ),
      SpecialityCategories(
        image: 'assets/icons/pocket.png',
        name: 'Easy\nCook',
      ),
      SpecialityCategories(
        image: 'assets/icons/only-on-swiggy.png',
        name: 'Only on\nMob',
      ),
      SpecialityCategories(
        image: 'assets/icons/thunder.png',
        name: 'Vegan\nFood',
      ),
    ];
  }

  static List<CuisinesList> getIndianRestaurants() {
    return const [
      CuisinesList(image: 'assets/images/food3.jpg', name: 'South\nIndian'),
      CuisinesList(image: 'assets/images/food5.jpg', name: 'Indian\nChai'),
      CuisinesList(image: 'assets/images/food1.jpg', name: 'North \nndian'),
      CuisinesList(image: 'assets/images/food8.jpg', name: 'Indian\nBiryani'),
      CuisinesList(image: 'assets/images/food9.jpg', name: 'Indian\nDosa'),
      CuisinesList(image: 'assets/images/food4.jpg', name: 'Indian\nIdly'),
    ];
  }

  static List<CuisinesList> getPopularBrands() {
    return const [
      CuisinesList(image: 'assets/images/food3.jpg', name: 'Sangeetha'),
      CuisinesList(image: 'assets/images/food5.jpg', name: 'Indian\nChai'),
      CuisinesList(image: 'assets/images/food1.jpg', name: 'Chai\nKings'),
      CuisinesList(image: 'assets/images/food8.jpg', name: 'Dosa\nMan'),
      CuisinesList(image: 'assets/images/food9.jpg', name: 'Subway'),
      CuisinesList(image: 'assets/images/food4.jpg', name: 'KFC'),
    ];
  }
}

class LargeRestaurantBanner {
  const LargeRestaurantBanner({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  static List<LargeRestaurantBanner> getBestInSafetyRestaurants() {
    return const [
      LargeRestaurantBanner(
        image: 'assets/images/food8.jpg',
        title: 'Namma Veedu Vasanta\n Bhavan',
        subtitle: 'South Indian',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food9.jpg',
        title: 'Chai Kings',
        subtitle: 'Desserts, Tea, Milk',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food3.jpg',
        title: 'Faaos',
        subtitle: 'Desserts, Fast Food, Bakery, Biscuits',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food4.jpg',
        title: 'Banu\n Bhavan',
        subtitle: 'Biryani, Chicken, Mutton',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food8.jpg',
        title: 'BBQ Nation',
        subtitle: 'Chicken, Fried Chickent, Tandoori Chicken',
      ),
    ];
  }

  static List<LargeRestaurantBanner> getPepsiSaveOurRestaurants() {
    return const [
      LargeRestaurantBanner(
        image: 'assets/images/food1.jpg',
        title: 'Faasos',
        subtitle: 'Fast Food, North Indian, Biryani, Desserts',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food2.jpg',
        title: 'Hungry Pizza',
        subtitle: 'Pizzas',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food7.jpg',
        title: 'Paradise\n Bhavan',
        subtitle: 'Biryani, Chicken, Mutton',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food10.jpg',
        title: 'BBQ Nation',
        subtitle: 'Chicken, Fried Chickent, Tandoori Chicken',
      ),
      LargeRestaurantBanner(
        image: 'assets/images/food3.jpg',
        title: 'OMB Biryani',
        subtitle: 'Biryani',
      ),
    ];
  }
}
