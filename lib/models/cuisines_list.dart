class CuisinesList {
  const CuisinesList({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<CuisinesList> getCuisinesList() {
    return const [
      CuisinesList(image: 'assets/images/food3.jpg', name: 'South\nIndian'),
      CuisinesList(image: 'assets/images/food5.jpg', name: 'Italian'),
      CuisinesList(image: 'assets/images/food1.jpg', name: 'Japanese'),
      CuisinesList(image: 'assets/images/food8.jpg', name: 'Continental'),
      CuisinesList(image: 'assets/images/food9.jpg', name: 'Mexican'),
      CuisinesList(image: 'assets/images/food4.jpg', name: 'French'),
    ];
  }
}
