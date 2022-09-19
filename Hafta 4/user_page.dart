import 'package:flutter/material.dart';
import 'package:staj2/model.dart';

class UserPage extends StatelessWidget {
  final VeriModel user;

  const UserPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(user.cihazModel!),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage(user.cihazMarka!),
                radius: 80,
              ),
              const SizedBox(height: 40),
              Text(
                user.sayacMarka!,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(height: 64),
              ElevatedButton(
                child: Text(
                  'Send Email',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      );
}
