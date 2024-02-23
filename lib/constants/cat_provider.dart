import 'package:flutter/material.dart';
import 'package:flutter_petstore/constants/cat_details_model.dart';
import 'cat_model.dart';

class CatProvider extends ChangeNotifier {
  final List<Cat> _cats = [
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

  List<Cat> get cats => _cats;

  List<Cat> _filteredCats = [];

  List<Cat> get filteredCats => _filteredCats;

  bool _isSearching = false;

  bool get isSearching => _isSearching;

  String _searchText = '';

  String get searchText => _searchText;

  final List<Cat> _cartItems = [];

  List<Cat> get cartItems => _cartItems;
  CatDetails getSelectedCatDetails() {
    return CatDetails(
        name: _cats.isNotEmpty ? _cats[0].name : 'Default Cat',
        country: 'Unknown',
        age: 'Unknown',
        imagePath: '',
        weight: 'Unknown',
        height: 'Unkown',
        color: 'Unkown',
        description: 'Unkown');
  }

  void filterCats(String searchText) {
    _searchText = searchText.toLowerCase();
    _filteredCats = _cats
        .where((cat) => cat.name.toLowerCase().contains(_searchText))
        .toList();

    _isSearching = _searchText.isNotEmpty;

    notifyListeners();
  }

  void addToCart(Cat cat) {
    _cartItems.add(cat);
    notifyListeners();
  }

  void removeFromCart(Cat cat) {
    _cartItems.remove(cat);
    notifyListeners();
  }
}
