import 'package:favorites_place_app/models/place.dart';
import 'package:favorites_place_app/screens/favorite_place_details_screen.dart';
import 'package:flutter/material.dart';

class FavoritePlacesList extends StatelessWidget {
  const FavoritePlacesList({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text('No places added yet', style: Theme
            .of(context)
            .textTheme
            .bodyLarge
            ?.copyWith(
            color: Colors.white
        ),),
      );
    }


    return ListView.builder(
        itemCount: places.length, itemBuilder: (ctx, index) {
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (ctx) =>
              FavoritePlaceDetailsScreen(place: places[index],),),);
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(places[index].image),
          ),
          title: Text(places[index].title, style: Theme
              .of(context)
              .textTheme
              .bodyLarge
              ?.copyWith(
              color: Colors.white
          ),),
        ),
      );
    });
  }
}
