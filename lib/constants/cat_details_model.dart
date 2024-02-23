class CatDetails {
  final String name;
  final String country;
  final String age;
  final String imagePath;
  final String weight;
  final String height;
  final String color;
  final String description;

  CatDetails(
      {required this.name,
      required this.country,
      required this.age,
      required this.imagePath,
      required this.weight,
      required this.height,
      required this.color,
      required this.description});
}

class CatDataProvider {
  final List<CatDetails> catDetailsList = [
    CatDetails(
        name: 'Siamese Cat',
        country: 'Philippines',
        age: '2 years',
        imagePath: 'assets/Cat7.jpg',
        weight: '6',
        height: '26',
        color: 'Pale white',
        description:
            'The Siamese cat, known for its striking blue almond-shaped eyes and sleek, short coat, is a vocal and affectionate feline companion. With a distinctive color point pattern and a graceful demeanor, Siamese cats are not only visually stunning but also form strong bonds with their human families. Their social nature and playful antics make them captivating and cherished members of any household.'),
    CatDetails(
        name: 'Persian Cat',
        country: 'Singapore',
        age: '3 year',
        imagePath: 'assets/Cat1.png',
        weight: '7',
        height: '36',
        color: 'Brown',
        description:
            'The Persian cat, characterized by its long, luxurious coat and distinctive flat face, is an epitome of elegance and grace. Known for its calm and gentle demeanor, the Persian cat exudes a regal charm. With large, expressive eyes and a flowing mane, this breed captivates admirers. The Persian cat enjoys lounging in luxurious surroundings and forms deep connections with its human companions, making it a refined and affectionate addition to any home.'),
    CatDetails(
        name: 'Sphinx Cat',
        country: 'Indonesia',
        age: '1 year',
        imagePath: 'assets/Cat2.png',
        weight: '5',
        height: '22',
        color: 'Yellow',
        description:
            'The Sphinx cat, with its hairless and wrinkled skin, is a unique and exotic breed. Despite its lack of fur, the Sphinx has a soft and warm feel to the touch. Known for its extroverted and friendly nature, this cat is highly interactive and seeks warmth and companionship. The Sphinx distinctive appearance and affectionate personality make it a conversation starter and a loving, devoted member of the family.'),
    CatDetails(
        name: 'Bengal Cat',
        country: 'Thailand',
        age: '5 year',
        imagePath: 'assets/Cat3.png',
        weight: '5',
        height: '23',
        color: 'Orange',
        description:
            'The Bengal cat, with its striking spotted or marbled coat reminiscent of a wild leopard, is a lively and playful companion. Known for its athletic build and energetic nature, the Bengal cat loves engaging in activities and games. With a sleek and glossy coat, this breed radiates a sense of wild beauty. Bengals form strong bonds with their owners, and their curious and intelligent demeanor adds an adventurous flair to any household.'),
    CatDetails(
        name: 'Abyssinian Cat',
        country: 'Taiwan',
        age: '4 year',
        imagePath: 'assets/Cat4.png',
        weight: '4',
        height: '24',
        color: 'Dark Brown',
        description:
            'The Abyssinian cat, with its ticked coat that gives the appearance of agouti fur, is a lively and inquisitive breed. Known for its playful and agile nature, the Abyssinian loves climbing and exploring its surroundings. With large, expressive eyes and a slender build, this cat exudes a sense of elegance. Abyssinians form close bonds with their families and thrive on interactive play and mental stimulation.'),
    CatDetails(
        name: 'Burmese Cat',
        country: 'Japan',
        age: '2 year',
        imagePath: 'assets/Cat5.png',
        weight: '3',
        height: '25',
        color: 'Gray',
        description:
            'The Burmese cat, with its sleek and shiny coat and expressive golden eyes, is a loving and affectionate feline companion. Known for its social nature, the Burmese enjoys being involved in family activities. With a compact and muscular build, this breed radiates a sense of warmth and companionship. Burmese cats are known to be vocal and form strong bonds with their human counterparts.'),
    CatDetails(
        name: 'Russian Blue Cat',
        country: 'China',
        age: '6 year',
        imagePath: 'assets/Cat6.png',
        weight: '8',
        height: '27',
        color: 'Pale white',
        description:
            'The Russian Blue cat, with its plush, short blue-gray coat and striking green eyes, is an elegant and reserved feline. Known for its gentle and shy demeanor, the Russian Blue forms deep attachments to its human family. With a graceful and slender build, this breed exudes a sense of sophistication. Russian Blues are known for their quiet intelligence and make loyal and loving companions.'),
    CatDetails(
        name: 'Ragdoll Cat',
        country: 'Korea',
        age: '5 year',
        imagePath: 'assets/Cat8.jpg',
        weight: '9',
        height: '28',
        color: 'Dark white',
        description:
            'The Ragdoll cat, known for its striking blue almond-shaped eyes and semi-longhair coat, is a gentle and relaxed feline companion. With a distinctive color point pattern and a large, muscular build, Ragdolls are known to go limp when picked up, hence their name. This breed is affectionate, often following its human family around, and enjoys being cradled. Ragdolls form strong bonds and are known for their placid and laid-back nature.'),
  ];

  CatDetails getCatDetails(String catName) {
    return catDetailsList.firstWhere(
      (catDetails) => catDetails.name == catName,
      orElse: () => CatDetails(
          name: 'Unknown',
          country: 'Unknown',
          age: 'Unknown',
          imagePath: '',
          weight: 'Unknown',
          height: 'Unkown',
          color: 'Unkown',
          description: 'Unkown'),
    );
  }
}
