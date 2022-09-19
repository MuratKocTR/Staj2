import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lesson_2/product/language/language_items.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne=FocusNode();
  FocusNode focusNodeTextFieldTwo=FocusNode();
   FocusNode focusNodeTextFieldThree=FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            maxLength: 50,
            /*buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return Container(
                height: 10,
                width: 40,
                color: Colors.green[100 * (currentLength ?? 0)],// BU KISMA TEKRAR BAK
              );
            },*/
           /* buildCounter: (BuildContext context,
                {int? currentLength, bool? isFocused, int? maxLength}) {
              return AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 10,
                width: 20.0 * (currentLength ?? 0),
                color:
                    Colors.green[100 * (currentLength ?? 0)], // BU KISMA TEKRAR BAK
              );
            },*/
            keyboardType: TextInputType.emailAddress,
            autofocus: true,
            //textField açıldığında klavyenin açılışı mail girmeye göre açılıcak
           // autofillHints: const [AutofillHints.email],
            //buildCounter ı incele bi,
       //    inputFormatters: [TextProjectInputFormatter()._formatter],
           focusNode: focusNodeTextFieldOne,
           textInputAction: TextInputAction.next,
            decoration: inputDecor1(),
            style: TextStyle(color: Colors.amber),
          ),
          TextField(focusNode: focusNodeTextFieldTwo,
           decoration: inputDecor2(),
           style: TextStyle(color: Colors.amber),),
             TextField(focusNode: focusNodeTextFieldThree,
             minLines: 4,
             maxLines: 8,
           decoration: inputDecor3(),
           style: TextStyle(color: Colors.amber),)
        ],
      ),
    );
  }

  InputDecoration inputDecor3() {
    return InputDecoration(
            prefixIcon: Icon(Icons.wysiwyg_outlined),
            border: OutlineInputBorder(),
           // hintText: "Şifre",
            filled: true,
            fillColor: Colors.black,
            
            labelText: LanguageItems.noteTitle,
            //text field ın tepesine yazmak için label text kullanılır.
          );
  }

  InputDecoration inputDecor2() {
    return InputDecoration(
            prefixIcon: Icon(Icons.key_outlined),
            border: OutlineInputBorder(),
           // hintText: "Şifre",
            filled: true,
            fillColor: Colors.black,

            labelText: LanguageItems.passwordTitle,
            //text field ın tepesine yazmak için label text kullanılır.
          );
  }

  InputDecoration inputDecor1() {
    return InputDecoration(
            prefixIcon: Icon(Icons.mail_outline),
            border: OutlineInputBorder(),
            labelText:LanguageItems.emailTitle,
           // hintText: "E-mail",
           
            filled: true,
            fillColor: Colors.black,

           
            //text field ın tepesine yazmak için label text kullanılır.
          );
  }
}
class TextProjectInputFormatter{
  final _formatter=TextInputFormatter.withFunction((oldValue, newValue) {
          if (newValue.text=="a"){
            return oldValue;
          }
          return oldValue;
        });
}