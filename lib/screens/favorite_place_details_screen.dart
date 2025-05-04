import 'package:favorites_place_app/models/place.dart';
import 'package:flutter/material.dart';

class FavoritePlaceDetailsScreen extends StatelessWidget {
  const FavoritePlaceDetailsScreen({super.key, required this.place});
  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details of ${place.title}'),
      ),

      body: Stack(
        children: [
          Image.file(place.image, fit: BoxFit.cover, height: double.infinity, width: double.infinity,)
        ],
      ),
    );
  }
}
