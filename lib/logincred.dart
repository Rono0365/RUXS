import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
//import 'netcloud.dart';
//import 'package:flutter/material.dart';
//import 'signup.dart';
//import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//import 'HomePage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAppL extends StatefulWidget {
  MyAppL(
      {Key? key,
      required this.title,
      })
      : super(key: key);


  final String title;
  
  @override
  _MyAppLState createState() => _MyAppLState();
}

class _MyAppLState extends State<MyAppL> {
  final titleController = TextEditingController();
  final titleController1 = TextEditingController();
  var passtok;
  String PassToken = '';
  String ID = '';
  bool pressd = false;
  final storage = new FlutterSecureStorage();
  var userid;
  var value;
  int State = 0;
  Future getValidation() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtoken = sharedPreferences.getString('token');
    var idk = sharedPreferences.getString('key');
    //var idk = sharedPreferences.getString('key');

    setState(() {
      PassToken = obtoken;
      ID = idk;
    });
    print('another one' + PassToken);
    print('another tw' + ID);
  }
  Future logout() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
     sharedPreferences.remove('token');
     sharedPreferences.remove('key');
    //var idk = sharedPreferences.getString('key');

    print('another one' + PassToken);
    print('another tw' + ID);
  }
  @override
  void initState() {
   widget.title.toString() == 'splash' ?getValidation().whenComplete(() {
      PassToken != null
              ? Future.delayed(Duration.zero, () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              title: 'Riara Mobile', token: PassToken, userid: ID)));
                })
              : Container()
          //MyAppL()
          //.whenComplete(() async {

          ;
      //print("here she comes:" + userid);
    }):logout();

    super.initState();
  }

  Future createAlbum() async {
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/api-token-auth/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': titleController.text,
        'password': titleController1.text,
      }),
    );
    print(response1.statusCode);
    //works => print(token['token']);
    setState(() {
      State = response1.statusCode;
    });
    var token = jsonDecode(response1.body);
    print(token);
    if (response1.statusCode == 200) {
      setState(() async {
        passtok = token['token'].toString();
        userid = token['user_id'].toString();
        await storage.write(key: userid, value: passtok);
        value = storage.read(key: userid);
      });

      //});
//save the token for next time

    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          backgroundColor: Colors.deepPurple,
          body: PageView(children: [
            Card(
              color: Colors.deepPurple,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * .05,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0),
                      child: Center(
                        child:  Container(
              height: MediaQuery.of(context).size.width * 0.250,
              width: MediaQuery.of(context).size.width * 0.250,
              child: Image.asset('assets/riaralogowhite-removebg-preview.png')),
        
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.30,
                    ),
                    Padding(
                      //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: titleController,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            //fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            labelText: 'Username',
                            hintText: 'Enter your username'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 15, bottom: 0),
                      //padding: EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: titleController1,
                        obscureText: true,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            //fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
    
                            //border: OutlineInputBorder(),
                            labelText: 'Password',
                            hintText: 'Enter secure password'),
                      ),
                    ),
    
                    SizedBox(
                      height: MediaQuery.of(context).size.width * 0.25,
                    ),
                   titleController1.text != ''&& titleController.text != ''  ? pressd? CircularProgressIndicator(
    
                      color: Colors.purple,
                    ):Container():Container(),
                    Container(
                      height: 20,),
                    Container(
                      height: 50,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(20)),
                      child: FlatButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        onPressed: () {
                          setState(() {
                            pressd =true;
                          });
                      titleController1.text != ''&& titleController.text != ''  ?     createAlbum().whenComplete(() async {
                            final SharedPreferences sharedPreferences =
                                await SharedPreferences.getInstance();
                            sharedPreferences.setString('token', passtok);
                            sharedPreferences.setString('key', userid);
                            setState(() {
                              PassToken = passtok;
                            });
                            if (State == 200) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyHomePage(
                                      title: titleController.text,
                                      token: passtok,
                                      userid: userid,
                                    ),
                                  ));
                              print('exis' + passtok);
                            } else {
                              print('haiwork');
                              const snackBar = SnackBar(
                                content: Text(
                                    "Please Try Again! There's an error with your credentials"),
                              );
    
    // Find the ScaffoldMessenger in the widget tree
    // and use it to show a SnackBar.
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                            ;
                          }):'';
    
                          //print(State);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Text('Riara University', //'© 2022' + '\n'
                        textAlign: TextAlign.center)
                  ],
                ),
              ),
            ),
          ])),
    );
  }
}
