import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
          
            Expanded( //genel olarak expanded lardaki flex değerleri ile ekranı böleriz
            // farklı bölmek için farklı expand değerleri ile dene
              flex: 4,
                child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.brown,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ],
            )),
           
            const Spacer(flex: 2),  //üstte atanan flex 4 kalan 6 sı da buraya
             Expanded(flex: 2,child:Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,// kullanabileceği max alanı 
                //kullanabilsin diye bunu kullanırız
            
                  // mainAxisAlignment: MainAxisAlignment.center,
              //ortada tutar
              // mainAxisAlignment: MainAxisAlignment.end,
             //ekranın sağına dayar 
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
               //eşit dağıtır

                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //olabilecek en uzak şekilde aralık bırakır
                 
                 //daha yakın aralıklar bırakır
                 children: [
                  Text("murat"),
                  Text("murat"),
                  Text("murat"),
                 ],
             )),
            
            SizedBox(
              height: 200,
          child: Column(children: [
            Expanded(child: Text("Data")),
            Expanded(child: Text("Data")),
            Expanded(child: Text("Data")),
            Expanded(child: Text("Data"))
          ],),   
          )
          ],
        ));
  }
}

  // Expanded(
            //   flex: 4,
            //   child: Container(
            //     color: Colors.amber,
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.green,
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.black,
            //   ),
            // ),





 //Expanded Row ve Column da kullanılabilir
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.yellow,
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.purple,
            //   ),
            // ),
            // Expanded(
            //   flex: 4,
            //   child: Container(
            //     color: Colors.white,
            //   ),
            // ),
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     color: Colors.green,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     color: Colors.black,
            //   ),
            // ),






 // mainAxisAlignment: MainAxisAlignment.center,
              //ortada tutar
              // mainAxisAlignment: MainAxisAlignment.end,
             //ekranın sağına dayar 
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
               //eşit dağıtır

                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 //olabilecek en uzak şekilde aralık bırakır
                
                 //daha yakın aralıklar bırakır