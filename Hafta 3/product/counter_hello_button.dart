import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/product/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
 int _counterCustom = 0;
   void _updateCounter() {
      setState(() {
        ++_counterCustom;
      });
    }
    final String _hello= LanguageItems.welcomeTitle;
  @override
  Widget build(BuildContext context) {
   
  

    return ElevatedButton(
        onPressed: _updateCounter, child: Text("$_hello $_counterCustom"));
  }
}
