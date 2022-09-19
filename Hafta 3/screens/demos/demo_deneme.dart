import 'package:flutter/material.dart';
class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Collection",style: TextStyle(color: Colors.amber)),
        leading: IconButton(  onPressed: (){}, icon: Icon(Icons.chevron_left_outlined, ),color: Colors.amber, ) ,
      ),

    );
  }
}
class CollectionModel{

}