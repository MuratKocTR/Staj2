

import 'package:flutter/material.dart';

class NavigateDetailLearn extends StatefulWidget {
  const NavigateDetailLearn({Key? key, this.isOkay = false}) : super(key: key);
  final bool isOkay;
  @override
  State<NavigateDetailLearn> createState() => _NavigateDetailLearnState();
}

class _NavigateDetailLearnState extends State<NavigateDetailLearn> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pop(!widget.isOkay);
              },
              icon: Icon(Icons.check,
                  color: widget.isOkay ? Colors.amber : Colors.deepPurple),
              label: widget.isOkay ? Text("Red") : Text("Onayla"))),
    );
  }
}
