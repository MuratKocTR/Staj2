import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/icon_learn.dart';
import 'package:flutter_lesson_2/screens/101/image_learn.dart';
import 'package:flutter_lesson_2/screens/101/stack_learn.dart';
class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController=PageController(viewportFraction: 1);
  int _currentPageIndex=0;
  void _updatePageIndex(int index){
    setState(() {
      _currentPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        
    
        children: [
          Padding(
            padding: const EdgeInsets.only(left:20),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: (){
              _pageController.previousPage(duration:_durationUtility._durationLow, curve: Curves.slowMiddle );
              //burdaki butona tıklandığında önceki sayfaya dönmesi için
              //previousPage kullandık 
            },child: Icon(Icons.chevron_left_outlined),),
            FloatingActionButton(
            onPressed: (){
              _pageController.nextPage(duration:_durationUtility._durationLow, curve: Curves.slowMiddle );
            },child: Icon(Icons.chevron_right_outlined),),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        onPageChanged: _updatePageIndex,
        
        controller: _pageController,
        
      children: [
       ImageLearn(),
       IconLearnView(),
       StackLearn(),
         Container(
          color:Colors.red
        ),
         Container(
          color:Colors.black
        )
      ],
      ),
    );
  }
}

class _durationUtility{
  static const _durationLow=const Duration(seconds: 1);
  
  }