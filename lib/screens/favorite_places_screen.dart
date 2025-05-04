import 'package:favorites_place_app/provider/user_favorite_places_provider.dart';
import 'package:favorites_place_app/screens/add_new_place_screen.dart';
import 'package:favorites_place_app/widgets/favorite_places_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlacesScreen extends ConsumerStatefulWidget {
  const FavoritePlacesScreen({super.key});

  @override
  ConsumerState<FavoritePlacesScreen> createState() => _FavoritePlacesScreenState();
}

class _FavoritePlacesScreenState extends ConsumerState<FavoritePlacesScreen> {

  _addNewPlace(){
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => AddNewPlaceScreen()));
  }



  @override
  Widget build(BuildContext context) {
    final favoriteplaces = ref.watch(userFavoritePlacesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Places'),
        actions: [
          IconButton(onPressed: (){
            _addNewPlace();
          }, icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FavoritePlacesList(places: favoriteplaces),
      ),
    );
  }
}