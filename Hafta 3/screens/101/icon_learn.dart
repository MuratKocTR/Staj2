import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
   IconLearnView({Key? key}) : super(key: key);
final IconSizes iconsize=IconSizes();
final IconColors1 iconcolors=IconColors1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hello Murat")),
      body:Column(
        children: [
         IconButton(onPressed: (){},
         icon: Icon(Icons.message_outlined),
         color: iconcolors.color1,
         iconSize: iconsize.icon_small,
         ),
         IconButton(onPressed: (){},
         icon: Icon(Icons.message_outlined),
         color: Theme.of(context).backgroundColor,
         //theme.of mantığına tekrardan bak tema değiştikçe herşeyi değiştirebilirsin kullan!!!
         iconSize: iconsize.icon_small,
         ),
         IconButton(onPressed: (){},
         icon: Icon(Icons.message_outlined),
         color: iconcolors.color1,
         iconSize: iconsize.icon_small,
         ),
         IconButton(onPressed: (){},
         icon: Icon(Icons.message_outlined),
         color: iconcolors.color1,
         iconSize: iconsize.icon_small,
         )
         ],
        //outlined icons u kullanmaya özen göster
      ),
    );
  }
}

class IconSizes{
  final double icon_small=25;
}
class IconColors1{
  final Color color1= const Color(0xffFF231F);//atarken başına 0XFF YAZMAM GEREK yoksa colortanımlanmaz
}