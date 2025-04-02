class PopularChefs {
  const PopularChefs({
    required this.image,
    required this.name,
  });

  final String image;
  final String name;

  static List<PopularChefs> getPopularChefs() {
    return const [
      PopularChefs(
        image: 'assets/images/chef1.jpg',
        name: 'Karan Gokani',
      ),
      PopularChefs(
        image: 'assets/images/chef2.jpg',
        name: 'Ben Lebus',
      ),
      PopularChefs(image: 'assets/images/chef3.jpg', name: 'Elena Silcock'),
      PopularChefs(image: 'assets/images/chef4.jpg', name: 'Adam Bush'),
    ];
  }
}
