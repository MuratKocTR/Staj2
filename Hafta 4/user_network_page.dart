import 'package:flutter/material.dart';
import 'package:staj2/model.dart';
import 'package:staj2/user_page.dart';
import 'user_local_page.dart';

import 'package:staj2/user_api.dart';

class UserNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: FutureBuilder<List<VeriModel>>(
          future: UsersApi.getUsers(),
          builder: (context, snapshot) {
            final users = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  return buildUsers(users!);
                }
            }
          },
        ),
      );

  Widget buildUsers(List<VeriModel> users) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];

          return ListTile(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => UserPage(user: user),
            )),
            title: Text(user.cihazMarka!),
            subtitle: Text(user.cihazModel!),
          );
        },
      );
}
