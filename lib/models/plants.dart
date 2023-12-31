class Plant {
  final int plantId;
  final int price;
  final String size;
  final double rating;
  final int humidity;
  final String temperature;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
      required this.price,
      required this.category,
      required this.plantName,
      required this.size,
      required this.rating,
      required this.humidity,
      required this.temperature,
      required this.imageURL,
      required this.isFavorated,
      required this.decription,
      required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 22,
        category: 'помещение',
        plantName: 'Сансевьера',
        size: 'Маленький',
        rating: 4.5,
        humidity: 34,
        temperature: '23 - 34',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: true,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 11,
        category: 'улица',
        plantName: 'Филодендрон',
        size: 'Средний',
        rating: 4.8,
        humidity: 56,
        temperature: '19 - 22',
        imageURL: 'assets/images/plant-two.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 18,
        category: 'помещение',
        plantName: 'Пляжная маргаритка',
        size: 'Большой',
        rating: 4.7,
        humidity: 34,
        temperature: '22 - 25',
        imageURL: 'assets/images/plant-three.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 30,
        category: 'улица',
        plantName: 'Большой Блюстем',
        size: 'Маленький',
        rating: 4.5,
        humidity: 35,
        temperature: '23 - 28',
        imageURL: 'assets/images/plant-one.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 24,
        category: 'улица',
        plantName: 'Большой Блюстем',
        size: 'Большой',
        rating: 4.1,
        humidity: 66,
        temperature: '12 - 16',
        imageURL: 'assets/images/plant-four.png',
        isFavorated: true,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 5,
        price: 24,
        category: 'улица',
        plantName: 'Луговой шалфей',
        size: 'Средний',
        rating: 4.4,
        humidity: 36,
        temperature: '15 - 18',
        imageURL: 'assets/images/plant-five.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 6,
        price: 19,
        category: 'Сад',
        plantName: 'Плюмбаго',
        size: 'Маленький',
        rating: 4.2,
        humidity: 46,
        temperature: '23 - 26',
        imageURL: 'assets/images/plant-six.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 7,
        price: 23,
        category: 'Сад',
        plantName: 'Тритония',
        size: 'Средний',
        rating: 4.5,
        humidity: 34,
        temperature: '21 - 24',
        imageURL: 'assets/images/plant-seven.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
    Plant(
        plantId: 8,
        price: 46,
        category: 'Сад',
        plantName: 'Тритония',
        size: 'Средний',
        rating: 4.7,
        humidity: 46,
        temperature: '21 - 25',
        imageURL: 'assets/images/plant-eight.png',
        isFavorated: false,
        decription:
            'Это растение - одно из лучших. Оно растет в большинстве регионов мира и может выживать'
            'даже в самую суровую погоду.',
        isSelected: false),
  ];
  static int calculateTotalPrice() {
    int totalPrice = 0;
    List<Plant> selectedPlants = addedToCartPlants();

    for (Plant plant in selectedPlants) {
      totalPrice += plant.price;
    }

    return totalPrice;
  }

  //Get the favorated items
  static List<Plant> getFavoritedPlants() {
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants() {
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants
        .where((element) => element.isSelected == true)
        .toList();
  }
}
