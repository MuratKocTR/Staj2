import 'package:flutter/material.dart';
class PaddingLearm extends StatelessWidget {
  const PaddingLearm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(),
  body:Column(
    //eğer body değerini padding ile sararsak atanan tüm değerler istenilen
    //özelliklerdeki şekilde hizalanıcak
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),

        //hepsini değiştirmek için all kullanırız
        child: _CustomContainer(),
      ),
     /* _emptyBox(),*/
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
       //simetrik olarak değişim yapmak istersek symmetric kullanırız
        child: _CustomContainer(),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        //sadece tek bir köşeden yapmak için only kullanırız
        child: _CustomContainer(),
      ),
         Padding(
        padding: const EdgeInsets.only(right: 30),
        //sadece tek bir köşeden yapmak için only kullanırız
        child: _CustomContainer(),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 30)+const EdgeInsets.symmetric(vertical: 20),
        //burdada birden fazla padding işlemini yani overwrite işlemini
        //+ ile yaparız
        child: _CustomContainer(),
      )

    ],
  )
);
  }

  SizedBox _emptyBox() => SizedBox(height: 10,);
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, height: 100, width: 100,);
  }
}
class AllPaddings{
  static const PagePadSymVert=const EdgeInsets.symmetric(vertical: 30);

  // padding değerlerinide class adı altında atayabilirsin
}