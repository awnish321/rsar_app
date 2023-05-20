import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rsarapp/model/ClassModel.dart';
import 'package:rsarapp/model/TestModel.dart';
import '../api/api_service.dart';
import 'package:http/http.dart' as http;
import '../model/UserModel.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  RegisterPageWidget createState() => RegisterPageWidget();
}

class RegisterPageWidget extends State {
  String radioButtonItem = 'Student';
  int id = 1;
  String dropDownValue = 'Class 1';
  var items = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  static const themeColour = Color(0xFF2C6B74);
  List<dynamic>users = [];
  late List<ClassModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: themeColour,
            centerTitle: true,
            title: const Text("api calling"),
            titleTextStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            leading: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Image.asset(
                "assets/logo.png",
              ),
            ),
          ),
          body: (ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              final Class_Name = user['Message'];
              return ListTile(
                leading: CircleAvatar(child: Text('${index + 1}')),
                title: Text(Class_Name),
              );
            },
          )
          ),
        )
    );
  }

  void fetchUser() async {
    const url = 'https://rachnasagar.in/rsarapp.services/upgradeClassDropdown.php?';
    final uri = Uri.parse(url).replace(
        queryParameters: {'action': 'classDropdown'});
    final response = await http.get(uri);
    {
      _userModel = classModelFromJson(response.body);
      print(_userModel);
      // list.map((ClassModel) => ClassModel.fromJason(ClassModel.toList());
    }
  }
}