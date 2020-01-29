import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'ImageCart.dart';
import 'package:flutter/foundation.dart' show debugDefaultTargetPlatformOverride;

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

@immutable
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    const title = 'Flutter Demo';
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: imageCards(),
      ),
    );
  }

  //

  List<ImageCard> cards = [
    ImageCard('Beach Huts', 'beach_huts.jpg'),
    ImageCard('Sample', 'sample.jpg'),
    ImageCard('Yellow Tulip', 'yellow_tulip.jpg'),
    ImageCard('White Chicken', 'white_chicken.jpg'),
    ImageCard('Brown Sheep', 'brown_sheep.jpg'),
    ImageCard('Butterfly', 'butterfly.png'),
    ImageCard('Horses', 'horses.jpg'),
  ];

  Widget imageCards() => ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      var width = MediaQuery.of(context).size.width;
      int cardIdx = index % cards.length;
      return cards[cardIdx].toWidget(width, new DateTime.now().millisecondsSinceEpoch);
    },
  );
}
