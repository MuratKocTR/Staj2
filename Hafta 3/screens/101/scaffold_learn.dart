import 'package:flutter/material.dart';
import 'package:flutter_lesson_2/screens/101/container_sized_box_learn.dart';
class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar(),
      body: const Text("Hello"),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context)=>Container(
          height: 200,
        ));
      },),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        
        child: BottomNavigationBar(items: const[
          //aşağıdaki bar için bottom navigation bar kullanırız 
          //sonrasında ise item atarız 

          
          BottomNavigationBarItem(icon: Icon(Icons.architecture_outlined),label:"a"),
           BottomNavigationBarItem(icon: Icon(Icons.architecture_outlined),label: "b")
        ],),
      ),
    );
  }
}