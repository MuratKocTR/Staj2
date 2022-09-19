import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/product/counter_hello_button.dart';
import 'package:flutter_lesson_2/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn
({Key? key}) : super(key: key);

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}


class _StatefullLearnState extends State<StatefullLearn> {
  int _countValue=0;
 

/*void incrementValue(){
setState(() {
  _countValue=_countValue+1;
});


}
void deincramentValue(){
  setState(() {
    _countValue=_countValue-1;
  });

}*/
void _updateCounter(bool isIncrement){
  if (isIncrement) {
    _countValue=_countValue+1;
  }else{
     _countValue=_countValue-1;
  }
  setState(() {
    
  });

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle),),
     floatingActionButton: Row(
      mainAxisSize:MainAxisSize.min,
       children: [
         floatingActButDemo1(),
         floatingActButDemo2(),
       ],
     ),
      body: Column(
        children: [
          Center(
            child: Text(_countValue.toString(), style: Theme.of(context).textTheme.headline2,),
          ),
          const Placeholder(),
        const  CounterHelloButton(),
        
        ],
      ),
    ); 
  }


  FloatingActionButton floatingActButDemo1() {
    return FloatingActionButton(onPressed: (){
      _updateCounter(true);
    },
       child: Icon(Icons.add ),);
  }

  Padding floatingActButDemo2() {
    return Padding(
         padding: const EdgeInsets.only(left: 10),
         child: FloatingActionButton(onPressed: (){
          _updateCounter(false);
         },
         child: Icon(Icons.remove ),),
       );
  }
}