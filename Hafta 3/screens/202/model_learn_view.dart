import 'package:flutter/material.dart';
import 'model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({Key? key}) : super(key: key);

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
    var user9 = PostModel8(body: 'a');
  @override
  void initState() {
    super.initState();
    final user1 = PostModel1()
      ..userId = 1
      ..body = "vb";
    user1.body = 'hello';

    final user2 = PostModel2(1, 2, "b", "a");
    user2.body = "a";

    final user3 = PostModel3(1, 2, "a", "b");
    //user3.body="a";  
    //bu değeri değiştiremeyiz çünkü final atanmış

    final user4=PostModel4(userId: 1, id: 1, title: "a", body: "a");
    //user4.body="a";

    final user5=PostModel5(userId: 1, id: 1, title: "a", body: "a");
    
    user5.userId;
    //user5.id//şayet privatedan çıkarılmadıysa erişelemez 
    final user6=PostModel6(userId: 1, id: 2, title: "b", body: "b");
    final user7=PostModel7(userId: 1, id: 2, title: "b", body: "b");
    final user8= PostModel8(body: 'A');//bu model
    //şayet bu modeli kullanacak isek service için bunu kullanmalıyız
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
     
        setState(() {
             user9=user9.copyWith(title: "vb");
                         user9.updateBody(null);
        });
      },),
      appBar: AppBar(//nullable değerler için ?? kullanarak onları kullanabiliriz.
        title: Text(user9.title ??"not has any data"),
        //data var ise atanan datayı yaz yok ise
        //?? den sonraki değeri yaz
      ),
    );
  }
}
