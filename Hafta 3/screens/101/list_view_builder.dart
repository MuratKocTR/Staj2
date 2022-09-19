
import 'package:flutter/material.dart';


class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(),
  body: ListView.separated(separatorBuilder: (context, index) {
    print(index);
    return const Divider(
      color: Colors.white,
    );
   // return Text("$index");
    },itemBuilder: (context, index) {
      return SizedBox(
        height: 200,
        child: Column(
     children: [
         Expanded(child: Image.network("https://picsum.photos/id/1/200/300")),
         Text("$index"),
     ],
   ),
      );
 
    },
   
  itemCount: 10,
  ),
);
  }
}