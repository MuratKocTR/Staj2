import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [_CenterCircProgIndicator()],
      ),
      body: const Center(
        //child: _CenterCircProgIndicator(
        child: _CenterCircProgIndicator(
        //child: LinearProgressIndicator(
              //düz çizgi şeklinde bir doluluk barı
        )
        
      ),
    );
  }
}

class _CenterCircProgIndicator extends StatelessWidget {
  const _CenterCircProgIndicator({
    Key? key,
  }) : super(key: key);
  final amberColor=Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Center(child: CircularProgressIndicator(
    color:amberColor,
    strokeWidth: 5,
    value: 0.7,
     backgroundColor: Colors.deepPurple,
    ),);
  }
}