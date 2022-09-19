import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;
  @override
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  //late final kavramını bir daha incele
  @override
  void didChangeDependencies() {
    //init state gibi çalışır ama init state den sonra çalışır
    super.didChangeDependencies();
      print("c");
   // _computeName();
  }
  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
  
    if(oldWidget.message!=widget.message){
        print("b");

    }
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();//navigation kısmında istenmeyen componentleri yoketmek 
    //için dispose kullanırız
    _message="";
  }
  void initState() {//init state yazdıktan sonra genelde hot restart at...
  //veriler sıfırdan açılınca düzeliyor
    super.initState();
   
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
     print("a");// init state de method olarak atayabilirz
  }

  void _computeName() {
      if (_isOdd) {
      _message += "Cift";
    }
    else{
    _message += "Tek";
    }
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ), //burdaki ? işareti short if olarak adlandırılır.
      //bunu kullanırken başta ? sonrasında ilk ifadesi
      //sonrada : kullanıp else ifadesi yazılır.
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
