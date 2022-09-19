import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/image_learn.dart';
import 'package:flutter_lesson_2/screens/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({Key? key}) : super(key: key);

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  List<int> selectedItems = [];
  void addSelected(int index,bool isAdd) {
    setState(() {
     isAdd? selectedItems.add(index) :selectedItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return TextButton(
              onPressed: () async {
                final response = await NavigateToWidgetNormal<bool>(
                    context, NavigateDetailLearn(
                      isOkay: selectedItems.contains(index),
                    ));
                if (response is bool) {
                  addSelected(index,response);
                }
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Placeholder(
                  color: selectedItems.contains(index)
                      ? Colors.amber
                      : Colors.deepPurple,
                ),
              ),
            );
          },
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              //navigator.of sayfa değişimi yaparken kullandığımız bir component
            },
            child: Icon(
              Icons.navigation_rounded,
            )));
  }
}

mixin NavigatorManager {
  void NavigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }

  Future<T?> NavigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings(),
      ),
    );
  }
}
