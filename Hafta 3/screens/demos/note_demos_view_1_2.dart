import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/image_learn.dart';

class DemoView extends StatelessWidget {
  const DemoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data1 = "Create yout first note!!!";
    final data2 = "Add a note about anything ..";
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.blueGrey[50],
      // bu arkaplan için iyi bir ton kullanabilirsin
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: SingleChildScrollView(// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
          child: Column(// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
            children: [// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
              ImageBox(),// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //       const TextField(// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //   obscureText: true,// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //   decoration: InputDecoration(// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //     border: OutlineInputBorder(),// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //     filled: true,// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //     fillColor: Colors.deepPurple,// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //     labelText: 'Password',// NE YAP ET MURAT COLUMN U SİNGLE CHİLD SCROOL VİEW Ekle
        //   ),
        // ),
              Text1(data1: data1, ),
              Text2(
                data2: data2,
              ),
              ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(primary: Colors.deepPurple,) , child: Text("Create a Note")),
              OutlinedButton(onPressed: () {}, child: Text("Copyrights 2022"))
            ],
          ),
        ),
      ),
    );
  }
}

class ImageBox extends StatelessWidget {
  const ImageBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200, width: 200, child: PngImage(name: ImageAssets().dice));
  }
}

class Text1 extends StatelessWidget {
  const Text1({
    Key? key,
    required this.data1,
  }) : super(key: key);

  final String data1;

  @override
  Widget build(BuildContext context) {
    return Text(data1,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: TextColors().text1));
  }
}

class Text2 extends StatelessWidget {
  const Text2({
    Key? key,
    required this.data2,
  }) : super(key: key);
  final String data2;

  @override
  Widget build(BuildContext context) {
    return Text(data2,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: TextColors().text2));
  }
}

class PaddingItems {
  static EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
}

class TextColors {
  final Color text1 = Colors.black;
  final Color text2 = Colors.black;
}
