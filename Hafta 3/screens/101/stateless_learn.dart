import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({Key? key}) : super(key: key);
  final String text2 = "Murat";
  final String text3 = "Murat1";
  final String text4 = "Murat2";
  final String text5 = "Murat3";
  //extract local variable yaparak atanan text değerini yukarda 
  //atayabiliriz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          //  Text("Hi Murat",style: TextStyle(fontSize: 18),),

          TitleTextWidget(text: text2),
          _emptyBox(),
          TitleTextWidget(text: text3),
          _emptyBox(),
          TitleTextWidget(text: text4),
          _emptyBox(),
          TitleTextWidget(text: text5),
          _emptyBox(),
          _CustomContainer(),
          _emptyBox()
        ],
      ),
    );
  }

  SizedBox _emptyBox() => SizedBox(
        height: 10,
        // color:Colors.red
        //burda color değeri atayamıyorum methodlar
        //kısa olmalaı ile bilinen yapılardır tek maddeli
        //ona göre yazmaya dikkat et
      );
}
//eğer class için başına (_) konursa sadece bu sayfadan erişilebilir olur

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({Key? key, required this.text}) : super(key: key);
  //final String? title;// burda atanan değer key kısmındada atanmalı
  // nullable olan değer Sonunda soru işareti olur final
  //atanmaz iseproblem çıkartır
  //const TitleTextWidget({Key? key,required.title}) : super(key: key);
  final String text;
  //kullanmak istediğimiz bir string değer var ama değiştirmek istiyoruz
  //ozman (required this. )
  // var bize bağlı string int olarak key kısmına eklemeliyiz
  //sonrasında ise üstte değiştirebilir

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
