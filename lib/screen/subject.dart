import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Subject extends StatelessWidget {
  const Subject({super.key});

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
        appBar: AppBar(centerTitle: true, title: const Text("Class 9"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.white,),
              onPressed: () {
                // do something
              },),
          ],
        ),
        body: Stack(
            children: <Widget> [
              Container(alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/background.png'),
                      fit: BoxFit.cover),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Card(color: themeColour,margin: EdgeInsets.all(15),child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text("Science",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  )),
                  Container(margin: const EdgeInsets.only(left: 13,right: 13,top: 7,bottom: 6),
                    child: Row(
                      children: const <Widget>  [
                        Expanded(
                          flex: 1,
                          child: Card(color: themeColour,child: Padding(
                            padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                            child: Text("Physics",overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Card(color: themeColour,child: Padding(
                            padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                            child: Text("Chemistry",overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                          ),),
                        ),
                      ],
                    ),
                  ),
                  // Container(margin: const EdgeInsets.only(left: 13,right: 13,top: 7,bottom: 6),
                  //   child: Row(
                  //     children: const <Widget>  [
                  //       Expanded(
                  //         flex: 1,
                  //         child: Card(color: themeColour,child: Padding(
                  //           padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                  //           child: Text("Math ",overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  //         ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         flex: 1,
                  //         child: Card(color: themeColour,child: Padding(
                  //           padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                  //           child: Text("Hindi",overflow: TextOverflow.ellipsis,
                  //               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  //         ),),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(margin: const EdgeInsets.only(left: 13,right: 13,top: 7,bottom: 6),
                  //   child: Row(
                  //     children: const <Widget>  [
                  //       Expanded(
                  //         flex: 1,
                  //         child: Card(color: themeColour,child: Padding(
                  //           padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                  //           child: Text("Mathematics",overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                  //         ),
                  //         ),
                  //       ),
                  //       Expanded(
                  //         flex: 1,
                  //         child: Card(color: themeColour,child: Padding(
                  //           padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                  //           child: Text("Sanskrit",overflow: TextOverflow.ellipsis,
                  //               style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  //         ),),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(margin: const EdgeInsets.only(left: 13,right: 13,top: 7,bottom: 6),
                    child: Row(
                      children: const <Widget>  [
                        Expanded(
                          flex: 1,
                          child: Card(color: themeColour,child: Padding(
                            padding: EdgeInsets.only(top: 20.0,bottom: 20,left: 10,right: 10),
                            child: Text(" Biology",overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
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
                        context,);
                    },
                  ),
                ],
              ),
            ]
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
      ),
    );
  }

}
