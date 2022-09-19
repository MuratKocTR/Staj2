import 'package:flutter/material.dart';

class CustomLearn extends StatelessWidget {
  const CustomLearn({Key? key}) : super(key: key);
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: elevatedButton1(
                            title: title, onPressed: () {
                              
                            },
                          ),
                ),
              )),
              SizedBox(height:15),  //
              //mediaquery dosyadaki bir widget ın özelliklerine göre davranmasını sağlayabilir
              elevatedButton1(title: title,onPressed: () {
                
              },)
        ],
      ),
    );
  }
}

class elevatedButton1 extends StatelessWidget with _ButtonComp, _paddingUtility {
   elevatedButton1({Key? key, required this.title,required this.onPressed}) : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: _ButtonComp().color1, shape: const StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normalPadding2x,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                ?.copyWith(color: _ButtonComp().textColor1,fontWeight: FontWeight.bold),
          ),
        ));
  }
}


class _paddingUtility{
  final EdgeInsets normalPadding= const EdgeInsets.all(8);
    final EdgeInsets normalPadding2x= const EdgeInsets.all(16);
}
class _ButtonComp {
  final Color color1 = Colors.red;
  final Color textColor1 = Colors.white;
}


// ogrenmen gereken herşey class componenti olabilir 