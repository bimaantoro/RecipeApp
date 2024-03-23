import 'package:flutter/material.dart';
import 'package:recipes/detail_screen.dart';
import 'package:recipes/model/recipes.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const RecipeGrid(gridCount: 2);
          } else if (constraints.maxWidth <= 1200) {
            return const RecipeGrid(gridCount: 2);
          } else {
            return const RecipeGrid(gridCount: 4);
          }
        },
      ),
    );
  }
}

class RecipeGrid extends StatelessWidget {
  final int gridCount;

  const RecipeGrid({super.key, required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: recipeList.map((recipe) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(recipe: recipe);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        recipe.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      recipe.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.access_time,
                              size: 16.0,
                              color: Colors.grey,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              recipe.cookTime,
                              style: const TextStyle(
                                  fontSize: 12.0, color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              size: 16.0,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 4.0),
                            Text(
                              recipe.starRating,
                              style: const TextStyle(
                                  fontSize: 12.0, color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
