import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget cardsWidget() => ListView.builder(
  itemBuilder: (BuildContext context, int index) {
    List<String> urls = [
      'https://res.cloudinary.com/demo/image/upload/beach_huts.jpg',
      'https://res.cloudinary.com/demo/image/upload/sample.jpg',
    ];
    int cardIdx = index % urls.length;
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Image.network(urls[cardIdx]),
          ListTile(
            title: Text('Full-size Image'),
          )
        ],
      ),
    );
  },
);

Widget blurUpCardsWidget() => ListView.builder(
  itemBuilder: (BuildContext context, int index) {
    var width = MediaQuery.of(context).size.width;
    var thumbnails = [ // todo: these are fake URLs
      'https://res.com/beach_huts_preview.jpg',
      'https://res.com/sample_preview.jpg',
    ];
    var urls = [
      'https://res.com/beach_huts_${width.toInt()}.jpg',
      'https://res.com/sample_${width.toInt()}.jpg',
    ];
    int cardIdx = index % urls.length;
    return Card(
      child: Column(mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: urls[cardIdx],
            placeholder: (context, url) =>
                Container(
                  width: width,
                  height: width * 0.65,
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(thumbnails[cardIdx]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
          ),
          ListTile(title: Text('Cloudinary Image With Preview'))
        ],
      ),
    );
  },
);

Widget cloudinaryCardsWidget() => ListView.builder(
  itemBuilder: (BuildContext context, int index) {
    var width = MediaQuery.of(context).size.width;
    var thumbnails = [
      'https://res.cloudinary.com/demo/image/upload/q_10,w_30/beach_huts.jpg',
      'https://res.cloudinary.com/demo/image/upload/q_10,w_30/sample.jpg',
    ];
    var urls = [
      'https://res.cloudinary.com/demo/image/upload/w_${width.toInt()}/beach_huts.jpg',
      'https://res.cloudinary.com/demo/image/upload/w_${width.toInt()}/sample.jpg',
    ];
    int cardIdx = index % urls.length;
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CachedNetworkImage(
            imageUrl: urls[cardIdx],
            placeholder: (context, url) =>
                Container(
                  width: width,
                  height: width * 0.65,
                  foregroundDecoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(thumbnails[cardIdx]),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
          ),
          ListTile(title: Text('Image With Blur-Up Preview'),)
        ],
      ),
    );
  },
);
