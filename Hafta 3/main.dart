import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lesson_2/screens/101/column_row_learn.dart';
import 'package:flutter_lesson_2/screens/101/container_sized_box_learn.dart';
import 'package:flutter_lesson_2/screens/101/list_view_builder.dart';
import 'package:flutter_lesson_2/screens/101/list_view_learn.dart';
import 'package:flutter_lesson_2/screens/101/navigate_detail_learn.dart';
import 'package:flutter_lesson_2/screens/101/navigation_learn.dart';
import 'package:flutter_lesson_2/screens/101/page_view_learn.dart';
import 'package:flutter_lesson_2/screens/101/scaffold_learn.dart';
import 'package:flutter_lesson_2/screens/202/model_learn_view.dart';
import 'package:flutter_lesson_2/screens/202/service/service_learn_get_view.dart';
import 'package:flutter_lesson_2/screens/202/service/service_post_learn.dart';
import 'package:flutter_lesson_2/screens/202/tab_learn.dart';
import 'package:flutter_lesson_2/screens/demos/my_collections_demo.dart';
import 'package:flutter_lesson_2/screens/demos/stack_demo_view.dart';
import 'package:flutter_lesson_2/screens/101/stack_learn.dart';
import 'package:flutter_lesson_2/screens/101/stateful_learn.dart';
import 'package:flutter_lesson_2/screens/101/stateful_life_cycle_learn.dart';
import 'package:flutter_lesson_2/screens/101/text_field_learn.dart';
import 'package:flutter_lesson_2/screens/101/text_learn.dart';
import 'package:flutter_lesson_2/screens/101/button_learn.dart';
import 'package:flutter_lesson_2/screens/101/app_bar_learn.dart';
import 'package:flutter_lesson_2/screens/101/icon_learn.dart';
import 'package:flutter_lesson_2/screens/101/color_learn.dart';
import 'package:flutter_lesson_2/screens/101/stateless_learn.dart';
import 'package:flutter_lesson_2/screens/101/padding_learn.dart';
import 'package:flutter_lesson_2/screens/101/card_learn.dart';
import 'package:flutter_lesson_2/screens/101/image_learn.dart';
import 'package:flutter_lesson_2/screens/demos/note_demos_view.dart';
import 'package:flutter_lesson_2/screens/101/custom_widget_learn.dart';
import 'package:flutter_lesson_2/screens/101/indicator_learn.dart';
import 'package:flutter_lesson_2/screens/101/list_tile_learn.dart';
import 'package:flutter_lesson_2/screens/demos/color_demos_view.dart';
import 'package:flutter_lesson_2/screens/demos/color_life_cycle_view.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return CupertinoApp daha çok ios yaklaşımları için
    //+ olarak üstteki return değerini kullanırsak diğer widgetlarda CupertinoAppBar olarak çağırılmalı mesela
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        bottomAppBarTheme: BottomAppBarTheme(
          shape: CircularNotchedRectangle(),
        ),
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Colors.amber),
          //cardTheme: CardTheme(
          // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)) ),
          //burda genel projedeki tüm kartların borderını aynı yapabiliriz
          //theme:ThemeData önemli onlara bak tekrardan
          errorColor: ColorItems.color1,
          textSelectionTheme: TextSelectionThemeData(selectionColor: Colors.deepPurple,cursorColor: Colors.deepPurple),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
          
            iconColor: Colors.amber,
            border: OutlineInputBorder(),
            labelStyle: TextStyle(color: Colors.amber),
          ),
          listTileTheme: ListTileThemeData(contentPadding: EdgeInsets.zero),
          appBarTheme: const AppBarTheme(
            centerTitle: true, //metni ortalamak için
            backgroundColor: Colors.deepPurple, //arkaplan rengi için
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
          )),
      home: ServiceLearn (),
    );
  }
}
