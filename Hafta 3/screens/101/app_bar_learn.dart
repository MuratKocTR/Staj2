import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({Key? key}) : super(key: key);
  final String _title = 'Welcome Murat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        leading:const Icon(Icons.chevron_left), //başa gelecek şekil yada buton için
        actionsIconTheme: IconThemeData(color: Colors.white),
        toolbarTextStyle: TextStyle(),
        //üstteki şarj göstergesi saat gibi değerlerin rengini değiştirmeye yarar
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
    );
  }
}
