import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'label.dart';
import 'model.dart';

class HomeScreen extends StatelessWidget {
 HomeScreen({super.key});

  Map<String,dynamic> sampleJson={
    "name":"Samuel",
    "age":25,
    "email":"Samel@gmail.com"
  };

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "JSon Serialization",
      home: Scaffold(
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  final user=User.fromJson(sampleJson);
                  print("Name:${user.name}");
                 print("Age:${user.age}");
                 print("Email:${user.email}");
                },
                child: Text("Decode"))
          ],
        ),
      ),
    );
  }
}
