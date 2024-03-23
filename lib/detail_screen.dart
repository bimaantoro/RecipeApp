import 'package:flutter/material.dart';
import 'package:recipes/model/recipes.dart';

class DetailScreen extends StatelessWidget {
  final Recipes recipe;

  const DetailScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 800) {
        return DetailWebPage(recipe: recipe);
      } else {
        return DetailMobilePage(recipe: recipe);
      }
    });
  }
}

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
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: const Text(
                                  'Bahan-bahan',
                                  style: TextStyle(
                                    fontSize: 22.0,
                                  ),
                                ),
                              ),
                              ListView(
                                shrinkWrap: true,
                                children:
                                    recipe.ingredients.map((ingredient) {
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

class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: () {
          setState(() {
            isBookmark = !isBookmark;
          });
        },
        icon: Icon(
          isBookmark ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.amber,
        ),
      ),
    );
  }
}
