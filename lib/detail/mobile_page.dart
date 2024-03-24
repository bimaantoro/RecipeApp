import 'package:flutter/material.dart';
import 'package:recipes/detail_screen.dart';
import 'package:recipes/model/recipes.dart';

class DetailMobilePage extends StatelessWidget {
  final Recipes recipe;

  const DetailMobilePage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Image.asset(recipe.imageAsset, fit: BoxFit.cover),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back)),
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 2,
                    child: Text(
                      recipe.title,
                      style: const TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  const BookmarkButton(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: Text(
                recipe.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Icon(Icons.access_time, color: Colors.amber),
                      const SizedBox(height: 8.0),
                      Text(recipe.cookTime),
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(
                        Icons.local_fire_department,
                        color: Colors.amber,
                      ),
                      const SizedBox(height: 8.0),
                      Text(recipe.calories)
                    ],
                  ),
                  Column(
                    children: [
                      const Icon(Icons.star, color: Colors.amber),
                      const SizedBox(height: 8.0),
                      Text(recipe.starRating),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Bahan-bahan',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
            ),
            Container(
              margin:
              const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: recipe.ingredients.map((ingredient) {
                  return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(ingredient));
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}