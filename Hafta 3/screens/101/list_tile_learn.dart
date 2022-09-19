import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  onTap: () {},
                minVerticalPadding: 0,
                  //dense:true olabildiğince komponenti sıkıştırmaya yarar
                  //title: Text("My Card"),

                  //widget ın alanını görmek amacıyla sized box yada container a 
                  //sar ve color ver ona göre oynama yap ve tekrar dene
                  title: RandomImage(),
                  subtitle: Text("How do you use your card",textAlign: TextAlign.center,),
                  leading: Container(
                    height: 200,
                    width: 30,
                    alignment: Alignment.topCenter,
                    color:Colors.red,
                    child: Icon(Icons.money_outlined)),
                  trailing: SizedBox(width:20,child: Icon(Icons.chevron_right_outlined)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
