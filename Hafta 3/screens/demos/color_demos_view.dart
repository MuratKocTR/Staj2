import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({Key? key, required this.initialColor}) : super(key: key);
final Color? initialColor;
  @override
  State<ColorDemosView> createState() => _ColorDemosViewState();
}

class _ColorDemosViewState extends State<ColorDemosView> {
  Color? _backgroundColor;
  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  void initState() {
  super.initState();
  _backgroundColor=widget.initialColor ??Colors.transparent;
  }
@override
  void didUpdateWidget(covariant ColorDemosView oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    inspect(widget);
   // print(oldWidget.initialColor!=widget.initialColor &&widget.initialColor!=null);
    if (widget.initialColor!=_backgroundColor &&widget.initialColor!=null) {
      changeBackgroundColor(widget.initialColor!);
    }  
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _colorOnTap,
          items: const [
            BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.amber), label: "Home"),
            BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.deepPurple),
                label: "Search"),
            BottomNavigationBarItem(
                icon: _colorContainer(color: Colors.deepOrange),
                label: "Profile"),
          ]),
    );
  }

  void _colorOnTap(value) {//methodlar hep void olur
       
          if (value == _MyColors.amber.index) {
            changeBackgroundColor(Colors.amber);
          } else if (value == _MyColors.deepPurple.index) {
            changeBackgroundColor(Colors.deepPurple);
          } else if (value == _MyColors.deepOrange.index) {
            changeBackgroundColor(Colors.deepOrange);
          }
        }
}

enum _MyColors { amber, deepPurple, deepOrange }

class _colorContainer extends StatelessWidget {
  const _colorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
