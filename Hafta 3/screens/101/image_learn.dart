import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
              child: Image.network(
                  'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
                  //Image her halükarda başka bir widget ın içinde olmalı sadece Image olarak eklenemez
          SizedBox(
            height: 100,
            width: 100,
            child: PngImage(name: ImageAssets().dice),
          ),

          //const Image(
          //ayrıca desteklenen dosya formatları
          //JPEG, PNG, GIF, Animated GIF, WebP, Animated WebP, BMP, and WBMP.
          //webden dosya url si ile veriyi iki farklı şekilde alabiliriz
          // image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),)
          //Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
        ],
      ),
    );
  }
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
    // bi üstteki kod ile png dosyasının içindeki adı herhangi bir değer olabilir
    //png olması koşulu ile PngImage class ına dahil ettik.
  }

  String get _nameWithPath => 'assets/png/$name.png';
}

class ImageAssets {
  final String dice = "dice";
}
