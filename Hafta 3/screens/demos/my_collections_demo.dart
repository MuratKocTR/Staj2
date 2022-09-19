import 'package:flutter/material.dart';

class MyCollectionsDemo extends StatefulWidget {
  const MyCollectionsDemo({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemo> createState() => _MyCollectionsDemoState();
}

class _MyCollectionsDemoState extends State<MyCollectionsDemo> {
 late final List<CollectionModel> _items;
  //late sonradan değer gelicek ama sadece constructor
  //zamanında  Değer gelicek
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Collection", style: TextStyle(color: Colors.amber)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.chevron_left_outlined,
          ),
          color: Colors.amber,
        ),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        padding:  PaddingUtility().paddingHorizontal,
        itemBuilder: (context, index) {
          return _CollectionCard(model: _items[index]);
        },
        /**/
      ),
    );
  }
}

class _CollectionCard extends StatelessWidget {
  const _CollectionCard({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:  PaddingUtility().paddingBottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: PaddingUtility().paddingAll,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                      color: Colors.amber,
                      child: Image.asset(
                        _model.imagePath,
                        fit: BoxFit.cover,
                      ))),
              Padding(
                padding: PaddingUtility().paddingTop,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(_model.title), Text(" ${_model.price} eth")],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}


class CollectionItems{
    late final List<CollectionModel> items;
CollectionItems(){
  items = [
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art1",
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art2",
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.imageCollection,
          title: "Abstract Art3",
          price: 3.4)
    ];
}
  

}
class ProjectImages{
  static const imageCollection="assets/png/image_demo.png";
}
class PaddingUtility{
  final paddingTop=EdgeInsets.only(top: 10);
  final paddingBottom=EdgeInsets.only(bottom: 20);
  final paddingHorizontal= EdgeInsets.symmetric(horizontal: 20);
  final paddingAll=EdgeInsets.all(20);
  
}