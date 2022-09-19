import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart' as http;
import 'package:staj2/model.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({Key? key}) : super(key: key);

  @override
  State<NetworkPage> createState() => _NetworkPageState();
}

class _NetworkPageState extends State<NetworkPage> {
  List<VeriModel> _data = <VeriModel>[];
  final controller = TextEditingController();
  Future fetchData() async {
    var url = "https://fake-api-for-flutter.herokuapp.com/veri";
    var response = await http.get(Uri.parse(url));
    var data = <VeriModel>[];
    if (response.statusCode == 200) {
      var dataJson = json.decode(response.body);
      for (var dataJson in dataJson) {
        data.add(VeriModel.fromJson(dataJson));
      }
    }
    return data;
  }

  @override
  void initState() {
    // TODO: implement initState
    fetchData().then((value) {
      setState(() {
        _data.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firma Verileri"),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              controller: controller,
              onChanged: searchBook,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: ((context, index) {
                //

                //           Card(
                //   child: Padding(
                //    padding: EdgeInsets.only(
                //       top: 36.0, left: 6.0, right: 6.0, bottom: 6.0),
                //       child: ExpansionTile(
                //       title: Text('Birth of Universe'),
                //         children: <Widget>[
                //          Text('Big Bang'),
                //          Text('Birth of the Sun'),
                //          Text('Earth is Born'),
                //       ],
                //     ),
                //   ),
                // )
                return CardCallback(index);
              }),
              itemCount: _data.length,
            ),
          ),
        ],
      ),
    );
  }

  Card CardCallback(int index) {
    return Card(
      child: ExpansionTile(
        title: Text(
          "Firma Adı= " + _data[index].firma.toString(),
          style: TextStyleBold(),
        ),
        children: [
          Column(
            children: [
              Text(
                "Oid= " + _data[index].oid.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "CihazMarka= " + _data[index].cihazMarka.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "CihazModel= " + _data[index].cihazModel.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "SayacMarka= " + _data[index].sayacMarka.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "SayacModel= " + _data[index].sayacModel.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "KarekodJsonData= " + _data[index].jsondata.toString(),
                style: TextStyleJson(),
              ),
              Text(
                "CihazAktif= " + _data[index].caktif.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "OptimisticLockField= " +
                    _data[index].optimisticLockField.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "Seri= " + _data[index].seri.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "SayacUygun= " + _data[index].sayacuygun.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "ManyetikSwitch= " + _data[index].manyetikswitch.toString(),
                style: TextStyleBold(),
              ),
              Text(
                "Cihazok= " + _data[index].cihazok.toString(),
                style: TextStyleBold(),
              ),
              Text("devEUI= " + _data[index].devEUI.toString()),
              Text("appEUI= " + _data[index].appEUI.toString()),
              Text("appKey= " + _data[index].appKey.toString()),
              Text("devAddr= " + _data[index].devAddr.toString()),
              Text("appSKey= " + _data[index].appSKey.toString()),
              Text("nwkSKey= " + _data[index].nwkSKey.toString()),
              Text("fSKKey= " + _data[index].fSKKey.toString()),
            ],
          ),
        ],
      ),
    );
  }

  void searchBook(String query) {
    final oneri = _data.where((data) {
      final seriii = data.seri!.toLowerCase();
      final input = query.toLowerCase();
      return seriii.contains(input);
    }).toList();
    setState(() => _data = oneri);
  }

  TextStyle TextStyleBold() {
    return TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  }

  TextStyle TextStyleJson() {
    return TextStyle(
        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.red);
  }
}
