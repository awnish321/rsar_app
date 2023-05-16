import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  static const themeColour = Color(0xFF2C6B74);

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {

  List<dynamic>
  users = [];
  static const themeColour = Color(0xFF2C6B74);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rachna Sagar"),
      ),
      body: (ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final email = user['title'];
          return ListTile(
            leading: CircleAvatar(child: Text('${index+1}')),
            title: Text(email),
          );
        },
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUser,
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: themeColour,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: themeColour),
                accountName: Text(
                  "Awnish Kumar",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("Awnish@gmail.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: themeColour),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              iconColor: themeColour,
              title: const Text(' My Profile '),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              iconColor: themeColour,
              title: const Text(' My Class '),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              iconColor: themeColour,
              title: const Text(' Ebook '),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              iconColor: themeColour,
              title: const Text(' Saved Videos '),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              iconColor: themeColour,
              title: const Text(' Edit Profile '),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              iconColor: themeColour,
              title: const Text('LogOut'),
              textColor: themeColour,
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void fetchUser() async {
    const url = 'https://api.first.org/data/v1/news';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    setState(() {
      users = json['data'];
    });
  }

}
