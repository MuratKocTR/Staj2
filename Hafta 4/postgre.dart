import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/foundation/key.dart';
import 'package:postgres/postgres.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Future operation() async {
    var connection = PostgreSQLConnection(
        "ec2-99-81-16-126.eu-west-1.compute.amazonaws.com", // hostURL
        5432, // port
        "d1ea0c8spit8na", // databaseName
        username: "pxuwibqrsgxvyc",
        password:
            "12b41cf09a92585c0b371eec2d4e995cc74b9e134eee6dc7c995a7f6d11f09ce",
        useSSL: true);
    try {
      await connection.open();
      debugPrint("Connected");
    } catch (e) {
      print("error");
      print(e.toString());
    }

    await viewReturn(connection);
  }

  Future<void> viewReturn(PostgreSQLConnection connection) async {
    var results = await connection.query('SELECT * from cihaz');
    print(results);

    for (var row in results) {
      print('''
    ===
    id: ${row[0]}
    name: ${row[1]}
    email: ${row[2]}
    address: ${row[3]}
    country: ${row[4]}
    ===
    ''');
    }
  }

  @override
  Widget build(BuildContext context) {
    operation();
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}
