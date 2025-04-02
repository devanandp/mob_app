class TopPicksFood {
  const TopPicksFood({
    required this.image,
    required this.name,
    required this.minutes,
  });

  final String image;
  final String name;
  final String minutes;

  static List<TopPicksFood> getTopPicksfoods() {
    return const [
      TopPicksFood(
          image: 'assets/images/food1.jpg',
          name: 'Aubergine Parmigiana',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food2.jpg',
          name: 'Red Pesto Gnocchi',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food3.jpg',
          name: 'Beetroot & Feta Pesto',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food4.jpg',
          name: 'Mutton Rogan Jhosh',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food5.jpg',
          name: 'Parota with Salna',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food6.jpg',
          name: 'Mutton Biryani',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food7.jpg',
          name: 'Ceaser Salad',
          minutes: '42 mins'),
      TopPicksFood(
          image: 'assets/images/food8.jpg',
          name: 'Spicy Pesto Paccheri',
          minutes: '42 mins'),
    ];
  }
}
