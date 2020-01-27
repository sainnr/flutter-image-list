import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCard {
  static const baseUrl = "https://res.cloudinary.com/demo/image/upload";

  String title;
  String image;

  ImageCard(this.title, this.image);

  Widget toWidget(double width, int seed) => Card(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        CachedNetworkImage(
          imageUrl: "$baseUrl/w_${width.toInt()}/l_text:Arial_35:$seed/${this.image}",
          placeholder: (context, url) =>
              Container(
                width: width,
                height: width * 0.65,
                foregroundDecoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('$baseUrl/q_50,w_50/${this.image}'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
        ),
        ListTile(
          title: Text(this.title),
        )
      ],
    ),
  );
}
