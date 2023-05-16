import 'package:flutter/material.dart';
import '../api/api_service.dart';
import '../model/UserModel.dart';

class ForgetDetailScreen extends StatefulWidget {
  const ForgetDetailScreen({Key? key}) : super(key: key);

  @override
  State<ForgetDetailScreen> createState() => _ForgetDetailScreenState();
}

class _ForgetDetailScreenState extends State<ForgetDetailScreen> {
  static const themeColour = Color(0xFF2C6B74);
  late List<UserModel>? _userModel = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  void _getData() async {
    _userModel = (await ApiService().getUsers())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rachna Sagar"),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(child: Text(_userModel![index].id.toString())),
                          Text(_userModel![index].username),
                          Text(_userModel![index].address.geo.lat),
                          Text(_userModel![index].address.geo.lng),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel![index].email),
                          Text(_userModel![index].website),
                        ],
                      ),
                    ],
                  ),
                );
              },
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
}
