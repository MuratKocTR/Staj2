import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  const ContainerSizedBoxLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 200,
              child: Text('m' * 50),
            ),
            const SizedBox.shrink(),
            SizedBox.square(
              dimension: 50,
              child: Text('b' * 50),
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              constraints: const BoxConstraints(
                  maxWidth: 200, minWidth: 100,minHeight: 10, maxHeight: 100),
              //maxHeight max yükseklik maxWidth max genişlik
              child: Text('aa' * 100,maxLines: 2),
              padding: const EdgeInsets.all(10),
              //padding içerdeki componenete etki ederken
              margin: const EdgeInsets.all(10),
              decoration: ProjectUtility.boxDecoration,
              //margin dışardaki componente etki eder
            )
          ],
        ));
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      //eğer açılan değer üstteki gibi ise
      // colors:[ ]  burdaki haliyle birden fazla değer girebiliriz.
      //shape: BoxShape.circle, //boxun şeklini belirlemeye yarar
      borderRadius: BorderRadius.circular(10),
      border: Border.all(width: 10, color: Colors.white12),
      boxShadow: [
        BoxShadow(color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
      ]);
}

class ProjectContainerDecoration extends BoxDecoration {
  ProjectContainerDecoration()
      : super(
            gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
            //eğer açılan değer üstteki gibi ise
            // colors:[ ]  burdaki haliyle birden fazla değer girebiliriz.
            //shape: BoxShape.circle, //boxun şeklini belirlemeye yarar
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 10, color: Colors.white12),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0.1, 1), blurRadius: 12)
            ]);
}
