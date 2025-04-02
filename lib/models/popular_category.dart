class PopularCategory {
  const PopularCategory({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<PopularCategory> getPopularCategories() {
    return const [
      PopularCategory(
        image: 'assets/icons/offer.png',
        name: 'Healthy\nFood',
      ),
      PopularCategory(
        image: 'assets/icons/world-cup.png',
        name: 'Protein\nRich',
      ),
      PopularCategory(
        image: 'assets/icons/pocket.png',
        name: 'Easy\nCook',
      ),
      PopularCategory(
        image: 'assets/icons/only-on-mob.png',
        name: 'Only on\nMob',
      ),
      PopularCategory(
        image: 'assets/icons/thunder.png',
        name: 'Vegan\nFood',
      ),
    ];
  }
}
