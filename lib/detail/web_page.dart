import 'package:flutter/material.dart';
import 'package:recipes/detail_screen.dart';
import 'package:recipes/model/recipes.dart';

class DetailWebPage extends StatelessWidget {
  final Recipes recipe;

  const DetailWebPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        child: Center(
          child: SizedBox(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Recipes',
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(recipe.imageAsset),
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    recipe.title,
                                    style: const TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    maxLines: 2,
                                  ),
                                  const BookmarkButton(),
                                ],
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  recipe.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(Icons.access_time,
                                            color: Colors.amber),
                                        const SizedBox(width: 4.0),
                                        Text(recipe.cookTime)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.local_fire_department,
                                            color: Colors.amber),
                                        const SizedBox(width: 4.0),
                                        Text(recipe.calories)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(Icons.star,
                                            color: Colors.amber),
                                        const SizedBox(width: 4.0),
                                        Text(
                                          recipe.starRating,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Bahan-bahan',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                              ListView(
                                shrinkWrap: true,
                                children: recipe.ingredients.map((ingredient) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(ingredient),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
