import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
              child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Text(
                    "Merhaba",
                    style: Theme.of(context).textTheme.headline2,
                    maxLines: 1,
                  ))),
          Divider(),
          Container(
            color: Colors.amber,
            height: 150,
          ),
          Divider(), //iki komponenti ayırmaya yarayan widget
          SizedBox(
            height: 150,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
              Container(
                color: Colors.deepOrange,
                width: 150,
              ),
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
              Container(
                color: Colors.deepOrange,
                width: 150,
              ),
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
            ]),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
          FittedBox(
              child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Text(
                    "Merhaba",
                    style: Theme.of(context).textTheme.headline2,
                    maxLines: 1,
                  ))),
          Divider(),
          Container(
            color: Colors.amber,
            height: 150,
          ),
          Divider(), //iki komponenti ayırmaya yarayan widget

          //listview ı sized box a sarmamız gerekir.  ve 
          //sized boxada height vermmemiz yada width axis in yönüne bağlı
          
          SizedBox(
            height: 150,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
              Container(
                color: Colors.deepOrange,
                width: 150,
              ),
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
              Container(
                color: Colors.deepOrange,
                width: 150,
              ),
              Container(
                color: Colors.deepPurple,
                width: 150,
              ),
            ]),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.ac_unit_outlined)),
          _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  const _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hello");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
   print("exit");
  }
  @override

  Widget build(BuildContext context) {
    return Placeholder();
  }
}