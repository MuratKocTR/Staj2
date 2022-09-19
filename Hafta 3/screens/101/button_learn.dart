import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: Text("Save", style: Theme.of(context).textTheme.subtitle1),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.pressed)) {
                return Colors.amber;
              }
              return Colors.brown;
            })),
            onPressed: () {},
          ),
          //onPressed: null atar isek inaktif buton olur
          ElevatedButton(onPressed: () {}, child: Text("Save")),
          ElevatedButton(onPressed: null, child: Text("Save")),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc_rounded),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text("Data")),
          SizedBox(
            width: 200,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: const EdgeInsets.all(10)),
                onPressed: () {},
                child: SizedBox(width:200,child: const Text("Data"))),
          ),
          OutlinedButton.icon(onPressed: () {
            
          }, icon: const Icon(Icons.abc), label: Text("data")),
          InkWell(onTap: () {}, child: const Text("elma")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.black,
            shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20)) )),
            onPressed: () {
            
          }, child: Padding(
            padding: const EdgeInsets.only(top: 20,bottom: 20,right: 40,left: 40),
            child:  Text("Place Bid",style: Theme.of(context).textTheme.headline5),
          )),
          Container(height: 200,color: Colors.white,),

        ],
      ),
    );
  }
}
