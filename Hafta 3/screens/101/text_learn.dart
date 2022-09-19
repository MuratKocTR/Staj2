import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  TextLearnView({Key? key, this.userName}) : super(key: key);

  final String name = 'veli';
  final String?
      userName; // bu kısımda nullable olan veri üstteki key kısmındaki girilmeli
  //nullable kısım 8. videoda tekrar ortaya çıkıcak
  final ProjectKeys keys = ProjectKeys();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(onPressed: () {}, child: Text('a')),
          ElevatedButton(onPressed: () {}, child: Text('a')),
          Text("Welcome $name ${name.length}" * 10,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: ProjectColors.welcomeColor)),
          Text(
            "Hello $name ${name.length}" * 10,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),
          Text(userName ?? ''),
          Text(keys.welcome)
        ],
      )
          //ayrıca ${ } yaparsakta bir fonksiyon çağırabiliriz.
          //dolar işareti atanan değerin kullanımı için gerekli

          ),
    );
  }
}

//class yapısını kullan önemli!!!
class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      decoration: TextDecoration.underline,
      color: Colors.lime,
      fontStyle: FontStyle.italic);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = "Welcome";
}
