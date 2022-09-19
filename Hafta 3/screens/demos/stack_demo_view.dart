import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({Key? key}) : super(key: key);
  final _cardHeight =55.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Expanded(flex:4,child: Stack(
            alignment: Alignment.center,
          children: [Positioned.fill(child: RandomImage(),bottom: _cardHeight/2),
          Positioned(
            height: _cardHeight,
            bottom: 0,
            width: 300,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            ))
          ],

          ),),
          Spacer(
            flex: 6,
          ),
        ]));
  }
}
