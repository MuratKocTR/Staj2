import 'package:flutter/material.dart';
class ColorLearn extends StatelessWidget {
   ColorLearn({Key? key}) : super(key: key);
 final ColorItems colorItems=ColorItems();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container( color:Theme.of(context).errorColor ,child: const Text("Data"),)
        ],

        //color: colorItems.color1,
        //değer şayet final olsa idi static yerine üstte atadığımız final değeri gibi kullanabilirdik
       // color: ColorItems.color1,
       
      ),
    );
  }
}

class ColorItems{
  static const Color color1 = Color(0XFFFF231F);
  static const Color color1RGBO=Color.fromARGB(255, 255, 0, 1); 
}