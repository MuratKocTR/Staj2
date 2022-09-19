import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _CustomCard(),
          _CustomCard2(),
          _CustomCard3(),
        ],
      ),
    );
  }
}

class _CustomCard3 extends StatelessWidget {
  const _CustomCard3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.error,
        shape: ProjectShapes.roundedRectangleBorder,
        //RoundedRectangleBorder dikdörtgensel bir görüntü
        //verebilmek içinkullanılan bir shape türü
        //lakin borderRadius özelliği ile
        //şekil verilebilir.
        child: SizedBox(
          height: 100,
          width: 100,
        ));
  }
}

class _CustomCard2 extends StatelessWidget {
  const _CustomCard2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Theme.of(context).colorScheme.error,
        shape: CircleBorder(),
        //circleBorder dairesel bir görüntü verebilmek için
        //kullanılan bir shape türü

        child: SizedBox(
          height: 100,
          width: 100,
        ));
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: ProjectMargin.cardMargin,
        color: ProjectColors.cardColorWh,
        shape: StadiumBorder(),
        //stadium border stadium görüntüsü verebilmek için
        //kullanılan bir shape türü
        child: SizedBox(
          height: 100,
          width: 500,
          child: Center(child: Text("Murat")),
        ));
  }
}

class ProjectMargin {
  static const cardMargin = EdgeInsets.all(10);
}

class ProjectColors {
  static const cardColorWh = Colors.grey;
}

class ProjectShapes {
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(33));
}
