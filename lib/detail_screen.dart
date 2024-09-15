import 'package:flutter/material.dart';
import 'package:recipes/detail/mobile_page.dart';
import 'package:recipes/detail/web_page.dart';
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


class BookmarkButton extends StatefulWidget {
  const BookmarkButton({super.key});

  @override
  _BookmarkButtonState createState() => _BookmarkButtonState();
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool _isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.white,
      child: IconButton(
        onPressed: () {
          setState(() {
            _isBookmark = !_isBookmark;
          });
        },
        icon: Icon(
          _isBookmark ? Icons.bookmark : Icons.bookmark_border,
          color: Colors.amber,
        ),
      ),
    );
  }
}