import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:rsarapp/screen/privacyPolicy.dart';
import 'package:rsarapp/screen/testPage.dart';
import '../main.dart';
import 'dashBoard.dart';
import 'forgetDetail.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  RegisterPageWidget createState() => RegisterPageWidget();
}

class RegisterPageWidget extends State {
  // Default Radio Button Selected Item When App Starts.
  String radioButtonItem = 'Student';

  // Group Value for Radio Button.
  int id = 1;
  String dropDownValue = 'Class 1';
  bool _isShow = true;

  // List of items in our dropdown menu
  var items = [
    'Class 1',
    'Class 2',
    'Class 3',
    'Class 4',
    'Class 5',
  ];
  static const themeColour = Color(0xFF2C6B74);
  static const backgroundColour = Color(0xffd4e5e6);
  // late List<CountryModel>? countryCodeModelList = [];

  // @override
  // void initState() {
  //   super.initState();
  //   getCountryCodeList();
  // }

  // void getCountryCodeList() async {
  //   countryCodeModelList = (await ApiService().getCountryList())!;
  //   Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  //   print(countryCodeModelList);
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeColour,
          centerTitle: true,
          title: const Text("Register"),
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
        body: Stack(
          children: <Widget>[
            Container(
              color: backgroundColour,
              height: double.infinity,
              child: SingleChildScrollView(
                child: Container(padding: const EdgeInsets.all(8),margin: const EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 50),
                  decoration: BoxDecoration(border: Border.all(width: 3.0,color: themeColour),borderRadius: const BorderRadius.all(Radius.circular(10)),),
                  child: Column(
                    children: [
                      Card(
                        elevation: 1,
                        shadowColor: Colors.black,
                        color: Colors.grey[200],
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("You Are",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black54)),
                            ),
                            Row(
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: id,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.black),
                                  onChanged: (val) {
                                    setState(() {
                                      radioButtonItem = 'Student';
                                      id = 1;
                                      _isShow = true;
                                    });
                                  },
                                ),
                                const Text(
                                  'Student',
                                  style: TextStyle(fontSize: 17.0),
                                ),
                                Radio(
                                  value: 2,
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.black),
                                  groupValue: id,
                                  onChanged: (val) {
                                    setState(() {
                                      radioButtonItem = 'Teacher';
                                      id = 2;
                                      _isShow = false;
                                    });
                                  },
                                ),
                                const Text(
                                  'Teacher',
                                  style: TextStyle(
                                    fontSize: 17.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: _isShow,
                        child: Card(
                          elevation: 1,
                          shadowColor: Colors.black,
                          color: Colors.grey[200],
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text("Class",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black54)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    DropdownButton(
                                      isExpanded: true,
                                      value: dropDownValue,
                                      // Down Arrow Icon
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      // Array list of items
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(
                                            items,
                                          ),
                                        );
                                      }).toList(),
                                      // items: items.map((String items) {
                                      //   return DropdownMenuItem(
                                      //     value: items,
                                      //     child: Text(
                                      //       items,
                                      //     ),
                                      //   );
                                      // }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropDownValue = newValue!;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shadowColor: Colors.black,
                        color: Colors.grey[200],
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MyApp.themeColour),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: MyApp.themeColour),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Enter Your name',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shadowColor: Colors.black,
                        color: Colors.grey[200],
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MyApp.themeColour),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: MyApp.themeColour),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Enter your email',
                            ),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 1,
                        shadowColor: Colors.black,
                        color: Colors.grey[200],
                        child: const Padding(
                          padding: EdgeInsets.all(10),
                          child: TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: MyApp.themeColour),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 2, color: MyApp.themeColour),
                              ),
                              border: OutlineInputBorder(),
                              hintText: 'Enter mobile no',
                            ),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          const SizedBox(height: 15),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: MyApp.submitButton,
                              padding: const EdgeInsets.all(10), //<-- SEE HERE
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: const DashBoard()));

                              // Navigator.of(context).push(_createRoute());
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const DashBoard()),);
                            },
                            child: const Text(
                              'Submit',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: TextButton(
                          style: TextButton.styleFrom(),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: const ForgetDetails()));
                          },
                          child: const Text(
                            'Forget Details?',
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const PrivacyPolicy()));

                              Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicy()),);
                            },
                            child: const Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: const TestPage()));
                              // Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: const AboutUs()));

                              // Navigator.push(context, MaterialPageRoute(builder: (context) => const AboutUs()),);
                            },
                            child: const Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  color: MyApp.submitButton,
                  alignment: Alignment.center,
                  height: 35,
                  child: const Text(
                    "Powered By Rachna Sagar",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
