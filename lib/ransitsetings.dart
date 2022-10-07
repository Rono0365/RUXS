import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'main.dart';

class cal extends StatefulWidget {
  const cal({Key? key, required this.username}) : super(key: key);

  final String username;
  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  var responsev;
  var notresponsev;
  List data = [];
  List data2 = [];
  var route;
  var myid;
  var youguy;
  var sb;
  var bs;
  Future createAlbum() async {
    http.Response response1 = await http.post(
      Uri.parse('https://afleet.co.ke/transolution/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'sc': '${bs}',
        'bi': '${sb}',
        'userN': '${widget.username}', //username
        //'place': 'no need for this', //
        //stage coordinates bs
        //'usernamemi': '${widget.username}', //username
        // 'curbus': '${sb}',//int of bus sb
      }),
    );

    if (response1.statusCode == 200) {
      setState(() async {
        // passtok = token['token'].toString();
        // userid = token['user_id'].toString();
      });

      //});
//save the token for next time

    }
  }

  getdata() async {
    print(widget.username);
    //String token = widget.token.toString();
    //print("<<<<<<<<<<<<<<<<<<<<<<<${token}");
    var headers = {
      // '//Authorization': 'Token $token',
    };
    http.Response responsev = await http.get(
      Uri.parse('https://afleet.co.ke/stages/'),
    ); //headers: headers);
    var xcv = jsonDecode(responsev.body);
    setState(() {
      this.data = xcv;
      //print(data[0]['place']);
      //this.route = ;
      //this.sb;
      //this.bs;
      //here you'll get the value of the username
      // value = data;
    });
    http.Response notresponsev = await http.get(
      Uri.parse('https://afleet.co.ke/Sbuss/'),
    ); //headers: headers);
    var xcv2 = jsonDecode(notresponsev.body);
    setState(() {
      data2 = xcv2;
      print(data2);
      //print(data[0]['place']);
      //this.route = ;
      //this.sb;
      //this.bs;
      //here you'll get the value of the username
      // value = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
    //print(widget.school);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Text(
        ' ',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      appBar: AppBar(
        leading: Container(),
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Card(
          elevation: 0,
          child: Column(children: [
            AppBar(
              title: Text("Student's Transit"),
              centerTitle: true,
            ),
            Card(
              elevation: 0,
              child: Column(
                children: [
                  ListTile(title: Text('')),
                  ListTile(
                    title: Center(
                        child: Text('School Bus:',
                            style: TextStyle(fontSize: 20))),
                  ),
                  ListTile(
                    title: Center(
                      child: DropdownButton(
                        items: data2.map((item) {
                          //;
                          return DropdownMenuItem(
                              child: Container(
                                  width: MediaQuery.of(context).size.width * .8,
                                  child: ListTile(
                                    title: Text(item['nameq'].toString()),
                                    trailing: Text(item['place'].toString()),
                                  )),
                              value: item['id'].toString());
                        }).toList(),
                        onChanged: (newVal) {
                          var rx = newVal;
                          //List<Post> posts = List<Post>.from(rx.map((model)=> Post.fromJson(model)));
                          print(rx);
                          sb = rx;
                          setState(() {
                            youguy = newVal;
                            var asm = data2.toList().map((i) => i['id']);
                            var how = data2.toList().map((i) =>
                                i['id'] == rx.toString() ? rx.toString() : '');
                            var kiss = asm.toList().indexOf(
                                int.parse(rx.toString())); //gotcha bitch
                            // print(sb['id']);
                            //;
                            print(how);
                            print(sb);
                          });
                          //  value:,
                        },
                        value: youguy,
                      ),
                    ),
                  ),
                  ListTile(),
                  ListTile(
                    title: Center(
                        child:
                            Text('Bus Stage:', style: TextStyle(fontSize: 20))),
                  ),
                  ListTile(
                    title: Center(
                      child: sb == null
                          ? Text("Pick a School Bus",
                              style: TextStyle(color: Colors.red))
                          : DropdownButton(
                              items: data
                                  .map((item) => DropdownMenuItem(
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .8,
                                            child: ListTile(
                                                title: new Text(//sb['place']
                                                    item['name'].toString()))),
                                        value: item['coordinates'].toString(),
                                      ))
                                  .toList(),
                              onChanged: (newVal) {
                                setState(() {
                                  bs = newVal;
                                  print(bs);
                                });
                              },
                              value: bs),
                    ),
                  ),
                  ListTile(),
                  ListTile(),
                  ListTile(
                    title: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: FlatButton(
                          onPressed: () {
                            createAlbum();
                            Navigator.pop(context);
                          },
                          child: Text("done",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )),
                  ),
                  ListTile(),
                  ListTile(),
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
