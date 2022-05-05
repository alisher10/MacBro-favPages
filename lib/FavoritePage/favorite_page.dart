import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_db/Models/product_model.dart';

class FavoritePage extends StatefulWidget {
  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  var posts;
  @override
  void initState() {
    super.initState();
    posts = Hive.box<ProductModel>('favorites_box').values.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Card(
                child: Image.network(
                  posts[index].image!,
                ),
              ),
              Positioned(
                right: 0,
                child: InkWell(
                  child: IconButton(
                    onPressed: () async {
                      await Hive.box<ProductModel>('favorites_box')
                          .delete(posts[index]);
                    },
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemCount: posts == null ? 0 : posts.length,
      ),
    );
  }
}