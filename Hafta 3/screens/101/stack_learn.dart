import 'package:flutter/material.dart';

class StackLearn extends StatelessWidget {
  const StackLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            //doldurmak için kullanılır
            top: 100,
            child: Container(
              color: Colors.lime,
              //stack de yapılan olay şu ilk girilen widget en altta
              //height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: Container(
              color: Colors.amber,
              height: 150,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350), //
            child: Container(
              color: Colors.black,
              height: 200,
            ),
          ),
          Positioned(
            right: 0, //sağdan iter
            left: 0, //soldan iter
            top: 50, //yukardan iter
            //  bottom: 50,//alttan iter
            height: 250, //boy atarw

            //positioned default halinde tüm ekranı kaplar height verirsek istenilen
            //height taki bir şekil gibi davranır.
            child: Container(
              color: Colors.green,
              //height: 100,
            ),
          ),
          
        ],
      ),
    );
  }
}
