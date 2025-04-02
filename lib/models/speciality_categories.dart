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
        image: 'assets/icons/only-on-mob.png',
        name: 'Only on\nMob',
      ),
      SpecialityCategories(
        image: 'assets/icons/thunder.png',
        name: 'Vegan\nFood',
      ),
    ];
  }

  static List<CuisinesList> getTrendingRecipes() {
    return const [
      CuisinesList(
          image: 'assets/images/food3.jpg',
          name: 'Air Fryer Crispy Sesame Chicken'),
      CuisinesList(
          image: 'assets/images/food5.jpg', name: 'Jalapeño Bottle Caps'),
      CuisinesList(
          image: 'assets/images/food1.jpg', name: 'Air Fryer Duck Pancakes'),
      CuisinesList(
          image: 'assets/images/food8.jpg',
          name: 'Air Fryer Prawn & Sesame Toast'),
      CuisinesList(
          image: 'assets/images/food9.jpg',
          name: 'Air Fryer Crispy Honey Chilli Halloumi'),
    ];
  }
}
