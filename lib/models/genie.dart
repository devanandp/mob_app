class Aldi {
  const Aldi({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  static List<Aldi> getAldiProductCategories() {
    return const [
      Aldi(image: 'assets/icons/home.png', title: 'Home\nFood'),
      Aldi(image: 'assets/icons/documents.png', title: 'Documents\nBooks'),
      Aldi(image: 'assets/icons/delivery.png', title: 'Bulk\nDeliveries'),
      Aldi(image: 'assets/icons/more.png', title: 'Anything\nElse'),
    ];
  }
}
