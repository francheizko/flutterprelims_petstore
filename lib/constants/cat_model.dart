class Cat {
  final String imagePath;
  final String name;

  final int price;

  Cat({
    required this.imagePath,
    required this.name,
    required this.price,
  });
}

final List<Cat> cats = [
  Cat(
    imagePath: 'assets/Cat1.png',
    name: 'Persian Cat',
    price: 85,
  ),
  Cat(
    imagePath: 'assets/Cat2.png',
    name: 'Sphinx Cat',
    price: 60,
  ),
  Cat(
    imagePath: 'assets/Cat3.png',
    name: 'Bengal Cat',
    price: 90,
  ),
  Cat(
    imagePath: 'assets/Cat4.png',
    name: 'Abyssinian Cat',
    price: 75,
  ),
  Cat(
    imagePath: 'assets/Cat5.png',
    name: 'Burmese Cat',
    price: 75,
  ),
  Cat(
    imagePath: 'assets/Cat6.png',
    name: 'Russian Blue Cat',
    price: 60,
  ),
  Cat(
    imagePath: 'assets/Cat7.jpg',
    name: 'Siamese Cat',
    price: 95,
  ),
  Cat(
    imagePath: 'assets/Cat8.jpg',
    name: 'Ragdoll Cat',
    price: 55,
  ),
];
