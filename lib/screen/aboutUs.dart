import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rsarapp/screen/registerPage.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  static const themeColour = Color(0xFF2C6B74);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: const Color(0xFF2C6B74),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Rachna Sagar"),
        ),
        body: (TextButton(
          style: TextButton.styleFrom(
            foregroundColor: themeColour,
          ),
          child: const Text(
            'Skip',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.end,
          ),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => const RegisterPage()),
            );
          },
        )),
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
      ),
    );
  }
}
