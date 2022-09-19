import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/image_learn.dart';

class DemoView extends StatelessWidget {
  const DemoView({Key? key}) : super(key: key);
  final title1 = 'Create your First Code';
   final title2 = 'Copyrights 2022';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(),
      body: Padding(
        padding: Paddings.horizontalPadding,
        child: Column(
          children: [
            PngImage(name: ImageAssets().dice),
              Text1(title1: title1),
            Padding(
              
              padding: Paddings.verticalPadding,
            
            child: Text2(title2: title2),),
            const Spacer(),
           ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(primary: ButtonColors().color1 ,) , child: Text(ButtonText().note1)),
              OutlinedButton(onPressed: () {}, child: Text(ButtonText().note2))
            
          ],
        ),
      ),
    );
  }
}

class Text1 extends StatelessWidget {
  const Text1({
    Key? key,
    required this.title1,
  }) : super(key: key);

  final String title1;

  @override
  Widget build(BuildContext context) {
    return Text(
      
      title1,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black,
          fontWeight: FontWeight.w800),
    );
  }
}
class Text2 extends StatelessWidget {
  const Text2({
    Key? key,this.textAlign=TextAlign.center,
    required this.title2 ,
  }) : super(key: key);


  final TextAlign textAlign;
   final String title2;

  @override
  Widget build(BuildContext context) {
    return Text(
     title2,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black,
          fontWeight: FontWeight.w100),
    );
  }
}

class Paddings {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
       static const EdgeInsets verticalPadding =
      EdgeInsets.symmetric(vertical: 10);
}
//class yapıları ile örnekler dene akşama
class ButtonColors{
final Color color1 =Colors.deepPurple;
}
class ButtonText {
final String note1= "Create a Code";
final String note2 ="Copyrights 2022";
}





















// class ImageBox extends StatelessWidget {
//   const ImageBox({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         height: 200, width: 200, child: PngImage(name: ImageAssets().dice));
//   }
// }

// class Text1 extends StatelessWidget {
//   const Text1({
//     Key? key,
//     required this.data1,
//   }) : super(key: key);

//   final String data1;

//   @override
//   Widget build(BuildContext context) {
//     return Text(data1,
//         textAlign: TextAlign.center,
//         style: Theme.of(context)
//             .textTheme
//             .headline5
//             ?.copyWith(color: TextColors().text1));
//   }
// }

// class Text2 extends StatelessWidget {
//   const Text2({
//     Key? key,
//     required this.data2,
//   }) : super(key: key);
//   final String data2;

//   @override
//   Widget build(BuildContext context) {
//     return Text(data2,
//         textAlign: TextAlign.center,
//         style: Theme.of(context)
//             .textTheme
//             .headline6
//             ?.copyWith(color: TextColors().text2));
//   }
// }


// class TextColors {
//   final Color text1 = Colors.deepPurple;
//   final Color text2 = Colors.deepPurple;
// }
