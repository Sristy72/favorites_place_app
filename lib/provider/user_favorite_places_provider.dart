import 'dart:io';

import 'package:favorites_place_app/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserFavoritePlacesNotifier extends StateNotifier<List<Place>>{
  UserFavoritePlacesNotifier() : super([]);

  addPlace(String title, File image){
    final newFavoritePlaces = Place(title: title, image: image);
    state = [newFavoritePlaces, ...state];
  }
}

final userFavoritePlacesProvider = StateNotifierProvider<UserFavoritePlacesNotifier, List<Place>>((ref){
  return UserFavoritePlacesNotifier();
});
