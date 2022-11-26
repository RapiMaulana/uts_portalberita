class Product {
  final String name;

  final String image;
  final String description;

  Product(
    this.name,
    this.image,
    this.description,
  );
}

final List<Product> allData = [
  Product('sport', 'assets/sport.png', 'Sport Resource'),
  Product('food', 'assets/food.png', 'food resource'),
  Product('wisata', 'assets/wisata.png', 'wisata resource'),
  Product(
    'coding',
    'assets/coding.png',
    'coding resource',
  ),
];
