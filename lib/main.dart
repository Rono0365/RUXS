import 'package:Afleet/groups.dart';
import 'package:collection/collection.dart';
import 'communications.dart';
import 'Transit.dart';
import 'drawer.dart';
//import 'package:escholar/.dart';
import 'events.dart';
import 'logincred.dart';
import 'package:get/get.dart';
import 'ransitsetings.dart';
import 'noticeboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'SplashScreen.dart';
//import 'package:shimmer/shimmer.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'mess.dart';
//import 'bookstore.dart';
import 'package:intl/intl.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'notifications.dart';
import 'groupmess.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Afleet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage(
      {Key? key,
      required this.title,
      required this.token,
      required this.userid})
      : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  final String token;
  final String userid;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  var value;
  bool darkmode = true;
  var subjects;
  Color light3 = Colors.black12;
  Color Subject = Colors.blueGrey.shade50;
  Color light2 = Colors.blueGrey.shade50; //Subject
  Color light = Colors.grey.shade900; //scaffold
  Color lighttext =
      Colors.blueGrey.shade50; //Color light2text = Colors.grey.shade900;

  var sky2;
  var value2;
  int currt = 0;
  var value3;
  var mtv;
  var alone;
  var leo;
  bool b1 = false;
  bool b2 = false;
  bool b3 = false;
  bool b4 = false;
  bool nm = false;
  var info2;
  var index;
  bool lean = false;
  var info3;
  var musk;
  Color newcor = Colors.deepPurple;
  Color oldcor = Colors.purple;
  late TabController _tabController;
  //var newcor;
  var now;
  int ex5 = 0;
  int exc = 0;
  int ex = 0;
  var crpt;
  var yoi;
  var cx99;
  var cx199;
  var xrx;
  var gechyu;
  var this2;
  var nofmsg;
  //late TabController _tabController;
  List vb = [];
  var gmen;
  var week_area;
  //
  List haro = [];
  List la = [];
  List la2 = [];
  Future getMe() async {
    String token = widget.token.toString();
    String id = widget.userid.toString();
    //int cv = int.parse(id) - 1;

    print('here' + token);
    print('here' + id);
    //print(widget.token); wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
    http.Response responsev = await http
        .get(Uri.parse('https://afleet.co.ke/me/$id'), headers: headers);
    var xcv = jsonDecode(responsev.body);
    setState(() {
      this.sky2 = xcv;
      //here you'll get the value of the username
      //the usernbame is unique thus you can use it as nany user driver// teacher // student
      // value = sky2;
    });
    //print(sky2);
  }

  Future getWeather() async {
    String token = widget.token.toString();
    print(token);
    print(widget.token); // wasn't easy but never stopped
    var headers = {
      'Authorization': 'Token $token',
    };
//https://afleet.co.ke/HW/
    final tranzo = await http.get(Uri.parse('https://afleet.co.ke/stages/'),
        headers: headers);
    //https://afleet.co.ke/information/
    final info2 = await http.get(Uri.parse('https://afleet.co.ke/information/'),
        headers: headers);

    final responsex = await http.get(Uri.parse('https://afleet.co.ke/HW/'),
        headers: headers); //headers: headers
    //nofmsg
    final nfmsg = await http.get(Uri.parse('https://afleet.co.ke/notef/'),
        headers: headers
        // Send authorization headers to the backend.
        );
    final responsev = await http
        .get(Uri.parse('https://afleet.co.ke/students/'), headers: headers
            // Send authorization headers to the backend.
            ); //headers: headers
    //http.Response responsex = await http
    //  .get(Uri.parse('https://afleet.co.ke/id/1/')); //get via token
    http.Response response1 = await http.get(
        Uri.parse('https://afleet.co.ke/Sbuss/'),
        headers: headers); //get via token headers: headers
    http.Response response77 = await http
        .get(Uri.parse('https://afleet.co.ke/transolution/'), headers: headers);
    var result5 = jsonDecode(tranzo.body);
    var notmsg = jsonDecode(nfmsg.body);
    var result77 = jsonDecode(response77.body);
    var info = jsonDecode(info2.body); //returns info
    var result1 = jsonDecode(response1.body); //returns json body from api
    var results = jsonDecode(responsev.body); //returns json body from api
    var resultx = jsonDecode(responsex.body);
    setState(() {
      //DateFormat('EEEE').format(date);
      this.week_area = DateFormat(' d MMM').format(DateTime.now());
      this.leo = DateFormat('EEEE').format(DateTime.now());
      this.now = DateFormat('EEEE d MMM')
          .format(DateTime.now()); //returns json body from api
    }); //subjects
    setState(() {
      this.value = results;
      //this.value3 = info;
      this.yoi = result77;
      this.value2 = resultx;
      this.this2 = notmsg;
      this.info3 = info;
      this.value3 = result1;
      this.alone = result5;
    });
    xnote(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "You have new messages",
              payload: 'r',
            )
          : '';
    }

    xls(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has started it's transit",
              payload: 'r',
            )
          : '';
    }

    beam(String order) {
      //ex = 0;
      ex5++;
      return ex5 < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has arrived in school",
              payload: 'r',
            )
          : '';
    }

    var resch =
        yoi.map((i) => i['userN'] == sky2['username'] ? vb.add(i['bi']) : null);
    //var milast = vb.last;
    print(resch);

    var xon =
        info3.map((th) => th['to'] == sky2['username'] ? la.add(th) : null);

    print(xon);
    var gghvbh = info3.where((u) => u['whoiswho'] == sky2['username']).length;
    print(gghvbh);
    xrx = gghvbh.toString(); //already done 42
    var x = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx99 = ex['numbx'].toString()
            : 'null')
        .toString(); //
    var kilosh = notmsg
        .map((ex) => ex['useryou'].toString().contains(sky2['username'])
            ? cx199 = ex['state'].toString()
            : 'null')
        .toString(); //
    print(x);
    print(kilosh);

    this.crpt = la.length.toString();
    print(crpt);
    print(la.length.toString());

    String xb = la.length.toString();
    print(xb);
    final la2 = la;
    print(la2);
    //mtv = xb; //get the info value

    var cvdf = value3.map((x) => vb.last.toString() == x['id'].toString()
        ? haro.add(value3.indexOf(x))
        : '');
    print(cvdf);
    print(this.haro);
    print("<<<<<<<<<<>>>>>>>>>" + cvdf.toList().toString());
    //setsategoes here
    //this.gechyu = value3[haro.last]['commute'];
    //print(gechyu);
    if (cx99 == xrx) {
      nm = false;
      print("-----------------------------------------------");
      print("________________DONE__________________________");
    } else {
      print(kilosh + cx99);
      if (cx199 == 'offline' && int.parse(xrx) > int.parse(cx99)) {
        xnote("message");
        print("Should call note");
        nm = true;
      }
      print(cx99.toString() + "    " + xrx.toString());
      print('++++++++++++++not done++++++++++++++++++++++++++++++');
    }
    /*cx199 == 'offline' && int.parse(xrx) > int.parse(cx99)
        ? xnote("message")
        : '';*/
    //gechyu == 'on' ? xls("SchoolBus has started it's transit") : '';
    //gechyu == 'arrived' ? beam("School bus") : '';
    this.haro.clear();
    this.la.clear();
    var crpt2 = crpt;
    print(crpt2);
  }

  List<IconData> listicon = [
    Icons.receipt_long,
    //Icons.account_balance,

    Icons.call,
    Icons.group,
    //Icons.question_answer,
    //Icons.calendar_today,
    Icons.child_care_outlined

    //Icons.exit_to_app,
  ];
  List<IconData> lbottom = [
    Icons.school_outlined,
    Icons.schedule,
    Icons.group_outlined,
    Icons.message_outlined
  ];

  List lbottomtext = ["Dashboard", "Schedule", "Community", "Groups"];

  String token = '';
  //TabController _tabController;
  //TabController _tabController;
  xls3(String order) {
    //ex = 0;
    exc++;
    return exc < 2
        ? Ninotify.showNotification(
            id: 2,
            title: order,
            body: "Checking for your classes",
            payload: 'r',
          )
        : '';
  }

  offnd() {
    var counter = 90;
    Timer.periodic(Duration(seconds: 5), (timer) {
      //http req to  and from server
      counter++;

      if (counter == 0) {
        //counter = 15;
        print('Cancel timer');
        //timer.cancel();
      } else {
        this.getWeather();
        this.getMe();
      }
    });
  }
  //TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: lbottom.length);
    getWeather();
    getMe();
    offnd();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String token = widget.token.toString();
    //print(widget.token.toString(),);
    List drawerpath = [
      // Gradebook(

      //  ),
      //fees(),
      //contacts(),
      // teachers(

      //),
      // help(),
      //cal,
      calx()
    ];

    print(gechyu);
    if (gechyu == 'arrived') {
      //do stuff
      beam(String order) {
        //ex = 0;
        ex5++;
        return ex5 < 2
            ? Ninotify.showNotification(
                id: 2,
                title: order,
                body: "Your SchoolBus has arrived in school",
                payload: 'x',
              )
            : '';
      }

      //beam('School Bus');
    }
    if (gechyu == 'off') {
      ex = 0;
    }

    xls(String order) {
      //ex = 0;
      ex++;
      return ex < 2
          ? Ninotify.showNotification(
              id: 2,
              title: order,
              body: "Your SchoolBus has started it's transit",
              payload: 'r',
            )
          : '';
    }

    gechyu != 'off' ? xls3("classes") : '';

    return value2 == null && value3 == null && value == null
        ? Scaffold(
            backgroundColor: light,
            body: Center(
              child: CircularProgressIndicator(),
            ))
        : Scaffold(
            backgroundColor: light,
            drawer: Drawer(
                child: Scaffold(
                  
                    backgroundColor: light,
                    appBar: PreferredSize(
                      
                      preferredSize: Size.fromHeight(70.0),
                      child: AppBar(
                        flexibleSpace: Container(
          decoration: BoxDecoration(
              /*image: DecorationImage(
                  image: AssetImage('assets/Upperhill capitol hill.jpg'),
                  fit: BoxFit.fill
              )*/
          ),
        ),
                        leading: Row(children: [
                          SizedBox(width: 5),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.withOpacity(0.2),
                                borderRadius: BorderRadius.all(Radius.circular(
                                        10.0) //                 <--- border radius here
                                    )),
                            child: Icon(Icons.person_outline),
                          ),
                        ]),
                        backgroundColor: light,
                        elevation: 0.0,
                        iconTheme: IconThemeData(color: Colors.black),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: darkmode
                                ? InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 30,
                                      child: Icon(
                                          darkmode
                                              ? Icons.light_mode
                                              : Icons.dark_mode,
                                          color: Colors.deepPurple),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        light = Colors.grey.shade50;
                                        lighttext = Colors.grey.shade900;
                                        darkmode = false;
                                      });
                                    },
                                  )
                                : InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: darkmode
                                          ? Colors.white
                                          : Colors.grey.shade900,
                                      radius: 30,
                                      child: Icon(
                                          darkmode
                                              ? Icons.light_mode
                                              : Icons.dark_mode,
                                          color: Colors.deepPurple),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        light = Colors.grey.shade900;
                                        lighttext = Colors.grey.shade50;
                                        darkmode = true;
                                      });
                                    },
                                  ),
                          )
                        ],
                      ),
                    ), // here the desired height(child: AppBar()),
                    body: RefreshIndicator(
                      onRefresh: () async {
                        offnd();
                        //Do whatever you want on refrsh.Usually update the date of the listview
                      },
                      child: SingleChildScrollView(
                        child: Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...value.map((kn) => kn['username'] !=
                                        sky2['username']
                                    ? Container()
                                    : Column(
                                        children: [
                                          ListTile(
                                            title: Container(
                                              //height: MediaQuery.of(context).size.height*0.3,
                                              child: Text(
                                                  '${kn["firstname"]} ${kn["lastname"].toString()}',
                                                  style: GoogleFonts.lato(
                                                      fontSize: 28,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: lighttext)),
                                            ),
                                            subtitle: Text(
                                              kn["School"],
                                              style:
                                                  TextStyle(color: lighttext),
                                            ),
                                            trailing: Text(
                                                "Class:\n" + '${kn["Class"]}',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: lighttext)),
                                          ),
                                          Container(
                                            height: 20,
                                          ),
                                          /*Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.25,
                                            child: ListView.builder(
                                              itemCount: listicon.length,
                                              itemBuilder: (context, index) {
                                                var iconz = drawer[index];
                                                var path =
                                                    drawerpath[index];
                                                var datex = listicon[index];
                                                return ListTile(
                                                  leading: Icon(
                                                    datex,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(iconz),
                                                  onTap: () {
                                                   // getWeather();
                                                    showModalBottomSheet(
                                                        isScrollControlled: true,
                                                        context: context,
                                                        builder: (context) {
                                                          var mimi = 'wewe';
                                                          //  sum = 0;
                                                          //var given_list = [1, 2, 3, 4, 5];
                    
                                                          return path;//.last;
                                                        });
                                                  },
                    
                                                  //gotcha
                                                );
                                              },
                                            ),
                                          )*/
                                          /**?Icons.receipt_long,
                        //Icons.account_balance,
                    
                        Icons.call,
                        Icons.group,
                        //Icons.question_answer,
                        //Icons.calendar_today,
                        Icons.child_care_outlined
                        Gradebook(),
                          //fees(),
                          contacts(),
                          teachers(),
                         // help(),
                          //cal,
                           calx()
                         */
                                          ListTile(
                                            leading: Icon(
                                              Icons.receipt_long,
                                              color: Colors.deepPurple,
                                            ),
                                            title: Text("Units",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      Gradebook(
                                                    rxt: kn['Subjects'],
                                                  ),
                                                ), //MaterialPageRoute
                                              );
                                            },
                                          ),

                                          ListTile(
                                            leading: Icon(
                                              Icons.group,
                                              color: Colors.deepPurple,
                                            ),
                                            title: Text("Lecturers",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      teachers(
                                                    rxt: kn['Subjects'],
                                                  ),
                                                ), //MaterialPageRoute
                                              );
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.child_care_outlined,
                                              color: Colors.deepPurple,
                                            ),
                                            title: Text("policy",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        calx()), //MaterialPageRoute
                                              );
                                            },
                                          ),

                                          /*ListTile(
                                        leading: Icon(
                                          Icons.library_books_outlined,
                                          color: Colors.deepPurple,
                                        ),
                                        title: Text("BookStore",
                                            style: TextStyle(color: lighttext)),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => store(
                                                      username:
                                                          sky2['username'],
                                                    )), //MaterialPageRoute
                                          );
                                        },
                                      ),*/
                                          ListTile(
                                            leading: Icon(
                                              Icons.book_online,
                                              color: Colors.deepPurple,
                                            ),
                                            title: Text("Book appointment",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              /*Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => cal(
                                                          username:
                                                              sky2['username'],
                                                        )), //MaterialPageRoute
                                              );*/
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.info_outline_rounded,
                                              color: Colors.deepPurple,
                                            ),
                                            title: Text("Terms and conditions",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      contacts(
                                                    rxt: kn['Subjects'],
                                                  ),
                                                ), //MaterialPageRoute
                                              );
                                            },
                                          ),
                                          ListTile(
                                            leading: Icon(
                                              Icons.exit_to_app,
                                              color: Colors.red,
                                            ),
                                            title: Text("log out",
                                                style: TextStyle(
                                                    color: lighttext)),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => MyAppL(
                                                        title:
                                                            'logout') //screen(),
                                                    ), //MaterialPageRoute
                                              );
                                              //get out of my app
                                            },
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .1,
                                          ),
                                          Text("",//© 2022
                                              style: TextStyle(
                                                  color:
                                                      lighttext)), //permanent
                                          Text("Riara Mobile.",
                                              style: GoogleFonts.lato(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.deepPurple)),
                                                  Container(height:10),
                                                  Container(
              height: MediaQuery.of(context).size.width * 0.080,
              width: MediaQuery.of(context).size.width * 0.080,
              child: Image.asset('assets/riara00-removebg-preview.png')),

                                          //Text("#rono was here"),
                                        ],
                                      )),
                              ]),
                        ),
                      ),
                    ))),

            //where tab goes
            appBar: AppBar(
              actions: [
                FloatingActionButton(
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                        context: context,
                        builder: (context) {
                          //  sum = 0;
                          //var given_list = [1, 2, 3, 4, 5];

                          return Scaffold(
                              backgroundColor: light,
                              appBar: PreferredSize(
                                preferredSize: Size.fromHeight(70.0),
                                child: AppBar(
                                  backgroundColor: light,
                                  elevation: 0.0,
                                  iconTheme: IconThemeData(color: Colors.black),
                                ),
                              ), // here the desired height(child: AppBar()),
                              body: RefreshIndicator(
                                onRefresh: () async {
                                  offnd();
                                  //Do whatever you want on refrsh.Usually update the date of the listview
                                },
                                child: SingleChildScrollView(
                                    child: Column(children: [
                                  ...value.map(
                                    (kn) => kn['username'] != sky2['username']
                                        ? Container()
                                        : Column(children: [
                                            SingleChildScrollView(
                                                child: Column(
                                              children: [
                                                ListTile(title: Text('')),
                                                ListTile(
                                                  title: Container(
                                                    //height: MediaQuery.of(context).size.height*0.3,
                                                    child: Text(
                                                        '${kn["firstname"]} ${kn["lastname"].toString()}',
                                                        style: GoogleFonts.lato(
                                                            fontSize: 28,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: lighttext)),
                                                  ),
                                                  subtitle: Text(
                                                    "Adm: " + kn["adm_no"],
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  //trailing: Text("Class:"+kn["Class"]),
                                                ),
                                                ListTile(
                                                    subtitle: Text(
                                                        '${kn["School"]}' +
                                                            '\n' +
                                                            "Class: " +
                                                            '${kn["Class"]}' +
                                                            '\n' +
                                                            "Units: " +
                                                            '${(kn["Subjects"].length)}',
                                                        style: GoogleFonts.lato(
                                                            //fontSize: 24,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: lighttext))),
                                                //ListTile(subtitle:Text()),
                                                //ListTile(),

                                                /*Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.55,
                                                  child: ListView.builder(
                                                    itemCount: listicon.length,
                                                    itemBuilder:
                                                        (context, index) {
                                                      var myself =
                                                          sky2['username'];
                                                      var iconz = drawer[index];
                                                      print('<<<<<<${myself}>>>>>>>>');
                                                      var path =
                                                          drawerpath[index];
                                                      var datex = listicon[index];
                                                      return ListTile(
                                                        leading: Icon(
                                                          datex,
                                                          color:
                                                              Colors.deepPurple,
                                                        ),
                                                        title: Text(iconz),
                                                        onTap: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    path //screen(),
                                                                ), //MaterialPageRoute
                                                          );
                                                          //gotcha
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),*/
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.receipt_long,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Units",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            Gradebook(
                                                          rxt: kn['Subjects'],
                                                        ),
                                                      ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),

                                                ListTile(
                                                  leading: Icon(
                                                    Icons.group,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Lecturers",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            teachers(
                                                          rxt: kn['Subjects'],
                                                        ),
                                                      ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.child_care_outlined,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "policy",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              calx()), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.book_online,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Book Appointment",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    /*Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              cal(
                                                                username: sky2[
                                                                    'username'],
                                                              )), //MaterialPageRoute
                                                    );*/
                                                  },
                                                ),
                                                ListTile(
                                                  leading: Icon(
                                                    Icons.info_outline_rounded,
                                                    color: Colors.deepPurple,
                                                  ),
                                                  title: Text(
                                                    "Terms and conditions",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            contacts(
                                                          rxt: kn['Subjects'],
                                                        ),
                                                      ), //MaterialPageRoute
                                                    );
                                                  },
                                                ),
                                                /*ListTile(
                                                  leading: Icon(
                                                    Icons.exit_to_app,
                                                    color: Colors.red,
                                                  ),
                                                  title: Text(
                                                    "log out",
                                                    style: TextStyle(
                                                        color: lighttext),
                                                  ),
                                                  onTap: () {
                                                    //get out of my app
                                                  },
                                                ),*/
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      .1,
                                                ),
                                                Text(
                                                  "© 2022",
                                                  style: TextStyle(
                                                      color: lighttext),
                                                ), //permanent
                                                Text("from Afleet.",
                                                    style: GoogleFonts.lato(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Colors.deepPurple)),

                                                //Text("#rono was here"),
                                              ],
                                            )),
                                          ]),
                                  )
                                ])),
                              )
                              //bottomNavigationBar: ,
                              );
                        });
                  },
                  backgroundColor: light,
                  elevation: 0.0,
                  mini: true,
                  child: Center(
                      child: Stack(children: [
                    Icon(Icons.person_outlined, color: Colors.deepPurple),
                    //if you want to add on stuff
                  ])),
                )
              ],
              centerTitle: true,
              backgroundColor: light,
              elevation: 0.0,
              // Here we take the value from the MyHomePage object that was created by
              // the App.build method, and use it to set our appbar title.assets/eScholar001-removebg-preview.png'
              title:darkmode?Container(
              height: MediaQuery.of(context).size.width * 0.100,
              width: MediaQuery.of(context).size.width * 0.100,
              child: Image.asset('assets/riaralogowhite-removebg-preview.png')):Container(
              height: MediaQuery.of(context).size.width * 0.080,
              width: MediaQuery.of(context).size.width * 0.080,
              child: Image.asset('assets/riara00-removebg-preview.png')), /*Shimmer.fromColors(
                baseColor: Colors.deepPurple,
                highlightColor: Colors.deepPurple.shade300,
                child: InkWell(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...value.map((kn) =>
                              kn['username'] != sky2['username']
                                  ? Container()
                                  : Text('${kn["School"]}',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold)))
                        ]),
                    onTap: () {
                      getWeather();
                    }),
              ),*/
              iconTheme: IconThemeData(color: Colors.black),
            ),
            body: DefaultTabController(
              //var index;

              length: lbottom.length,
              // int index = DefaultTabController.of(context).index;
              child: Scaffold(
                  backgroundColor: light,
                  bottomNavigationBar: TabBar(
                    controller: _tabController,
                    onTap: (index) {
                      setState(() {
                        _tabController.index = index;
                      });

                      //});
                      //track this dumbfucks
                      print(index.toString());
                      /* if (index != 0) {
                        //fanya uchawi yako
                        this.topthis = 0;
                        //print(topthis);
                      }*/
                      if (index == 0) {
                        b1 = true;
                      } else {
                        b1 = false;
                      }
                      if (index == 1) {
                        b2 = true;
                      } else {
                        b2 = false;
                      }
                      if (index == 2) {
                        b3 = true;
                      } else {
                        b3 = false;
                      }
                      if (index == 3) {
                        b4 = true;
                      } else {
                        b1 = false;
                      }
                      index == 2
                          ? lean = true
                          : ''; //g h  cv   cv  cvhbb vhvvjh  j  kjknvfdbv
                    }, //vdhbv hbv hhhh vbhbhhbvd  vbvb
                    labelColor: newcor,
                    //controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    unselectedLabelColor: oldcor,
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                          //height:1.0,
                          width: 1.0,
                          color: Colors.deepPurple,
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 36.0)),
                    tabs: [
                      //final
                      //labelColor: Colors.purple,
                      ...IterableZip([lbottom, lbottomtext]).map(
                        (i) => Stack(
                          children: [
                            Tab(
                              //labelColor: Colors.purple,
                              //indicatorColor: Colors.
                              icon: CircleAvatar(
                                radius: 17,
                                backgroundColor: lbottom.indexOf(i[0]) ==
                                        _tabController.index
                                    ? Colors.transparent
                                    : Colors.deepPurple,
                                child: Icon(
                                  i[0],
                                  color: lbottom.indexOf(i[0]) ==
                                          _tabController.index
                                      ? Colors.deepPurple
                                      : Colors.white,
                                ),
                              ),
                              child: Text(i[1],
                                  style: TextStyle(
                                      fontSize: 12,
                                      overflow: TextOverflow.ellipsis,
                                      //fontWeight: FontWeight.bold,
                                      color: lighttext)),
                              //text: ,
                              //  backgroundColor: Colors.grey[50],
                            ),
                            i[1] != 'Info'
                                ? Container(
                                    child: Positioned(
                                        top: -2,
                                        right: 0,
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: Colors.transparent,
                                            child: CircleAvatar(
                                                radius: 5,
                                                backgroundColor:
                                                    Colors.transparent))),
                                  )
                                : !nm
                                    ? Container(
                                        child: Positioned(
                                            bottom: 10,
                                            right: 5,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: CircleAvatar(
                                                    radius: 5,
                                                    backgroundColor:
                                                        Colors.transparent))),
                                      )
                                    : Positioned(
                                        top: 5,
                                        right: -1,
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: light,
                                            child: CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.red,
                                              child: Center(
                                                  child: Text(
                                                "${(int.parse(xrx) - int.parse(cx99)) > 10 ? '' : (int.parse(xrx) - int.parse(cx99))}",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10),
                                              )),

                                              /*Center(
                                                  child: Text(
                                                      int.parse(crpt
                                                                  .toString()) >
                                                              5
                                                          ? ''
                                                          : crpt,
                                                      style: TextStyle(
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              Colors.white)))*/
                                            ))),
                            i[1] != 'Transit'
                                ? Container(
                                    child: Positioned(
                                        top: -2,
                                        right: 0,
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: Colors.transparent,
                                            child: CircleAvatar(
                                                radius: 5,
                                                backgroundColor:
                                                    Colors.transparent))),
                                  )
                                : gechyu !=
                                        'on' //best way to correct the red error
                                    ? Container(
                                        child: Positioned(
                                            bottom: 10,
                                            right: 5,
                                            child: CircleAvatar(
                                                radius: 7,
                                                backgroundColor:
                                                    Colors.transparent,
                                                child: CircleAvatar(
                                                  radius: 5,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                ))),
                                      )
                                    : Positioned(
                                        top: 5,
                                        right: 1,
                                        child: CircleAvatar(
                                            radius: 7,
                                            backgroundColor: light,
                                            child: AvatarGlow(
                                                glowColor: Colors.red,
                                                endRadius: 10.0,
                                                duration: Duration(
                                                    milliseconds: 2000),
                                                repeat: true,
                                                showTwoGlows: true,
                                                repeatPauseDuration:
                                                    Duration(milliseconds: 100),
                                                child: CircleAvatar(
                                                  radius: 5,
                                                  backgroundColor: Colors.red,
                                                )))),
                          ],
                        ),
                      ),
                    ],
                    //controller: _tabController,
                  ),
                  body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: _tabController,
                      children: [
                        //controller: RxController();
                        Scaffold(
                          backgroundColor: light,
                          body: SingleChildScrollView(
                              // Center is a layout widget. It takes a single child and positions it
                              // in the middle of the parent.
                              child: Column(children: [
                            ...value.map(
                              (kn) => kn['username'] != sky2['username']
                                  ? Container()
                                  : Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                          ListTile(
                                            leading: Text("Units",
                                                style: TextStyle(
                                                  color: lighttext,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 19,
                                                )),
                                            trailing: CircleAvatar(
                                                radius: 10,
                                                //backgroundColor: Colors.deepPurple,
                                                child: Center(
                                                    child: kn['username'] !=
                                                            sky2['username']
                                                        ? Container()
                                                        : Text(
                                                            kn["Subjects"]
                                                                .length
                                                                .toString(),
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            )))),
                                          ),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Wrap(
                                              spacing: 10.0,
                                              children: [
                                                ...kn["Subjects"]
                                                    .map((i) => InkWell(
                                                          child: Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.5,
                                                            child: Container(
                                                              child: Material(
                                                                  elevation: 0,
                                                                  color: light3,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                  ),
                                                                  child: Card(
                                                                    elevation:
                                                                        0,
                                                                    color: Colors
                                                                        .transparent,
                                                                    child:
                                                                        Column(
                                                                      children: [
                                                                        ListTile(
                                                                          title: Text(
                                                                              i['headline'].toString(),
                                                                              style: TextStyle(fontWeight: FontWeight.bold, color: lighttext)),
                                                                          trailing: InkWell(
                                                                              onTap: () {
                                                                                showModalBottomSheet(
                                                                                    context: context,
                                                                                    builder: (context) {
                                                                                      //  sum = 0;
                                                                                      //var given_list = [1, 2, 3, 4, 5];

                                                                                      return Scaffold(
                                                                                        backgroundColor: light,
                                                                                        appBar: AppBar(centerTitle: true, title: Text(i['headline'], style: TextStyle(color: Colors.black)), elevation: 0.0, backgroundColor: light),
                                                                                        body: SingleChildScrollView(
                                                                                            child: Column(
                                                                                          children: [
                                                                                            /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */                                      
                                                                                            ListTile(
                                                                                                leading: Icon(
                                                                                                  Icons.calendar_today,
                                                                                                  color: Colors.deepPurple,
                                                                                                ),
                                                                                                title: Text("Day Taught"),
                                                                                                subtitle: Text(i['day_taught'])),
                                                                                                
                                                                                            ListTile(leading: Icon(Icons.av_timer, color: Colors.deepPurple), title: Text("Time Duration"), subtitle: Text(i['time_duration'])),
                                                                                            ListTile(leading: Icon(Icons.now_widgets, color: Colors.deepPurple), title: Text("Code"), subtitle: Text(i['code'])),
                                                                                            ListTile(leading: Icon(Icons.person_outlined, color: Colors.deepPurple), title: Text("Teacher"), subtitle: Text(i['teacher'])),
                                                                                            ListTile(leading: Icon(Icons.place, color: Colors.deepPurple), title: Text("Place Taught"), subtitle: Text(i['place_taught'])),
                                                                                          ],
                                                                                        )),
                                                                                        //bottoma navigation bar
                                                                                      );
                                                                                    });
                                                                              },
                                                                              child: Icon(Icons.info_outline, color: Colors.deepPurple)),
                                                                          subtitle:
                                                                              Text(
                                                                            i['teacher'].toString(),
                                                                            style:
                                                                                TextStyle(color: lighttext),
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        ListTile(
                                                                          //title:Text("Students"),
                                                                          subtitle:
                                                                              Row(children: [
                                                                            Stack(
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                CircleAvatar(
                                                                                  radius: 10,
                                                                                  backgroundColor: Colors.transparent,
                                                                                  child: Center(
                                                                                      child: Icon(
                                                                                    Icons.location_pin,
                                                                                    size: 15,
                                                                                    color: Colors.deepPurple,
                                                                                  )),
                                                                                )
                                                                              ],
                                                                            ),
                                                                            SizedBox(
                                                                              width: MediaQuery.of(context).size.width * 0.01,
                                                                            ),
                                                                            Text(i['place_taught'],
                                                                                style: TextStyle(
                                                                                  fontSize: 12,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  color: lighttext,
                                                                                ))
                                                                          ]),
                                                                          title:
                                                                              Row(
                                                                            children: [
                                                                              Text("code: ${i['code']}",
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  style: TextStyle(
                                                                                    color: lighttext,
                                                                                    fontSize: 13,
                                                                                  ))
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )),
                                                            ),
                                                          ),
                                                          onTap: () {
                                                            showModalBottomSheet(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  //  sum = 0;
                                                                  //var given_list = [1, 2, 3, 4, 5];

                                                                  return Scaffold(
                                                                    backgroundColor:
                                                                        light,
                                                                    appBar: AppBar(
                                                                        centerTitle:
                                                                            true,
                                                                        title: Text(
                                                                            i[
                                                                                'headline'],
                                                                            style: TextStyle(
                                                                                color:
                                                                                    lighttext)),
                                                                        elevation:
                                                                            0.0,
                                                                        backgroundColor:
                                                                            light),
                                                                    body: SingleChildScrollView(
                                                                        child: Column(
                                                                      children: [
                                                                        /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */ListTile(
                                                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FriendMess2(
                                title: i['headline'].toString(),
                                token: widget.token,
                                myname: '',
                                user: sky2['username'],
                              ),
                            ), //MaterialPageRoute
                          );
                        },//tileColor: 
                        tileColor: Colors.black12,
                                                      leading: Icon(Icons.mail_outline,color: Colors.deepPurple), title: Text("Chat",
                                                                              style: TextStyle(color: lighttext),), subtitle: Text("message",
                                                                              style: TextStyle(color: lighttext),)),
                                                      
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(
                                                                              Icons.calendar_today,
                                                                              color: Colors.deepPurple,
                                                                            ),
                                                                            title:
                                                                                Text(
                                                                              "Day Taught",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle:
                                                                                Text(
                                                                              i['day_taught'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.av_timer, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Time Duration",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['time_duration'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.now_widgets, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Code",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['code'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.person_outlined, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Teacher",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['teacher'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                        ListTile(
                                                                            leading:
                                                                                Icon(Icons.place, color: Colors.deepPurple),
                                                                            title: Text(
                                                                              "Place Taught",
                                                                              style: TextStyle(color: lighttext),
                                                                            ),
                                                                            subtitle: Text(
                                                                              i['place_taught'],
                                                                              style: TextStyle(color: lighttext),
                                                                            )),
                                                                      ],
                                                                    )),
                                                                    //bottoma navigation bar
                                                                  );
                                                                });
                                                            /* Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) => Chatscreen(
                                                                      titlex: i['unit_name'],
                                                                      title: i,
                                                                    ) //screen(),
                                                                ), //MaterialPageRoute
                                                          );*/
                                                          },
                                                        ))
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            //height: MediaQuery.of(context).size.width * 0.58,
                                            child: Card(
                                              elevation: 0.0,
                                              color: light,
                                              child: Column(
                                                children: [
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  nm
                                                      ? Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              .8,
                                                          child: ListTile(
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft:
                                                                          Radius.circular(
                                                                              10),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              10),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              10),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              10))),
                                                              tileColor: Colors
                                                                  .blueGrey
                                                                  .shade800
                                                                  .withOpacity(
                                                                      0.1),
                                                              trailing: InkWell(
                                                                child:
                                                                    CircleAvatar(
                                                                  radius: 12,
                                                                  child: Center(
                                                                    child: Text(
                                                                      "${int.parse(xrx) - int.parse(cx99)}",
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder:
                                                                        (context) =>
                                                                            FriendMess(
                                                                      title:
                                                                          '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                                                                      token: widget
                                                                          .token,
                                                                          repl: 'k',
                                                                          newc:[],
                                                                      myname:
                                                                          '',
                                                                      user: sky2[
                                                                          'username'],
                                                                    ),
                                                                  ), //MaterialPageRoute
                                                                );
                                                              },
                                                              title: Center(
                                                                  child: Text(
                                                                      "You have new messages"))),
                                                        )
                                                      : SizedBox(),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  ListTile(
                                                    leading: Icon(
                                                      Icons.library_books,
                                                      color: Colors.deepPurple,
                                                    ),
                                                    title: Text(
                                                        value2 != null &&
                                                                value2
                                                                        .toList()
                                                                        .length ==
                                                                    0
                                                            ? "No Assignment"
                                                            : "Today's Assignment",
                                                        style: TextStyle(
                                                            color: lighttext)),
                                                    trailing: Chip(
                                                      elevation: 0,
                                                      backgroundColor: light,
                                                      label: now != null
                                                          ? Text(now,
                                                              style: TextStyle(
                                                                  color:
                                                                      lighttext))
                                                          : Text("Today"),
                                                    ),
                                                  ),
                                                  SingleChildScrollView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    child: value2 == null
                                                        ? Container()
                                                        : Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            //spacing: 10.0,
                                                            children: [
                                                              ...value2.map((k) => value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(
                                                                              " ",
                                                                              '') ==
                                                                          k['lass'].split(',')[0].replaceAll('[', '').replaceAll(
                                                                              " ",
                                                                              '')
                                                                      ? k['date'].toString() ==
                                                                              now.toString()
                                                                          ? InkWell(
                                                                              child: Container(
                                                                                padding: EdgeInsets.all(5.0),
                                                                                width: MediaQuery.of(context).size.width * 0.45,
                                                                                child: Material(
                                                                                    color: light3,
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.only(
                                                                                        topLeft: Radius.circular(20.0),
                                                                                        topRight: Radius.circular(20.0),
                                                                                        bottomLeft: Radius.circular(20.0),
                                                                                        bottomRight: Radius.circular(20.0),
                                                                                      ),
                                                                                    ),
                                                                                    child: Card(
                                                                                      elevation: 0.0,
                                                                                      color: Colors.transparent,
                                                                                      child: Column(
                                                                                        children: [
                                                                                          Container(
                                                                                            decoration: BoxDecoration(
                                                                                              color: Colors.deepPurple,
                                                                                              borderRadius: BorderRadius.circular(20),
                                                                                            ),
                                                                                            height: 4,
                                                                                            width: MediaQuery.of(context).size.width * 0.30,
                                                                                          ),
                                                                                          ListTile(
                                                                                            //subtitle: Text(k['lass'].split(',')[0].replaceAll('[','').replaceAll(" ",'')),
                                                                                            title: Text(k['subject'].toString(), style: TextStyle(fontWeight: FontWeight.bold, color: lighttext)),
                                                                                          ),
                                                                                          ListTile(
                                                                                              //tileColor: ,
                                                                                              title: Text("topic:"),
                                                                                              subtitle: Text(k['name'], style: TextStyle(color: lighttext))),
                                                                                        ],
                                                                                      ),
                                                                                    )),
                                                                              ),
                                                                              onTap: () {
                                                                                /* Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (context) => Chatscreen(
                                                                        titlex: i['unit_name'],
                                                                        title: i,
                                                                      ) //screen(),
                                                                  ), //MaterialPageRoute
                                                            );*/
                                                                              },
                                                                            )
                                                                          : SizedBox()
                                                                      : SizedBox()) ??
                                                                  []
                                                            ],
                                                          ),
                                                  ),
                                                  //Timeline here

                                                  SizedBox(
                                                    height: 15,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          /*Text(value.map(
                                    (kn) => kn['username'] == sky2['username']
                                        ?kn['Class']:'').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', ''),),*/
                                          ListTile(
                                            title: Text("Today's Class",
                                                style: TextStyle(
                                                  color: lighttext,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            subtitle: now != null
                                                ? Text(now,
                                                    style: TextStyle(
                                                      color: lighttext,
                                                    ))
                                                : Text("Today"),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(10.0),
                                            child:

                                                //Row with the assignments hii ya down
                                                //SizedBox(height: 25),

                                                Wrap(
                                              //holla
                                              spacing: 10.0,
                                              //crossAxisAlignment: WrapCrossAlignment.center,
                                              runSpacing: 5.0,
                                              // scrollDirection: Axis.horizontal, //MediaQuery.of(context).size.width;
                                              children: [
                                                ...kn["Subjects"].toList().map(
                                                      (i) => i['day_taught']
                                                                  .toString() ==
                                                              leo.toString()
                                                          ? Material(
                                                              color: light3,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          10.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          10.0),
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          10.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          10.0),
                                                                ),
                                                              ),
                                                              child: ListTile(
                                                                title: Text(
                                                                  i['headline']
                                                                      .toString(),
                                                                  style: TextStyle(
                                                                      color:
                                                                          lighttext),
                                                                ),
                                                                subtitle: Row(
                                                                    children: [
                                                                      Chip(
                                                                        //padding: EdgeInsets.all(5.0),

                                                                        label:
                                                                            Text(
                                                                          i['time_taught']
                                                                              .toString(),
                                                                          style: TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              color: lighttext),
                                                                        ),
                                                                        backgroundColor:
                                                                            light,
                                                                      )
                                                                    ]),
                                                                trailing:
                                                                    InkWell(
                                                                  onTap: () {
                                                                    showModalBottomSheet(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) {
                                                                          //  sum = 0;
                                                                          //var given_list = [1, 2, 3, 4, 5];

                                                                          return Scaffold(
                                                                            backgroundColor:
                                                                                light,
                                                                            appBar: AppBar(
                                                                                centerTitle: true,
                                                                                title: Text(i['headline'], style: TextStyle(color: lighttext)),
                                                                                elevation: 0.0,
                                                                                backgroundColor: light),
                                                                            body: SingleChildScrollView(
                                                                                child: Column(
                                                                              children: [
                                                                                /*
                                                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                                                    */ListTile(
                                                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FriendMess2(
                                title: i['headline'].toString(),
                                token: widget.token,
                                myname: '',
                                user: sky2['username'],
                              ),
                            ), //MaterialPageRoute
                          );
                        },
                        tileColor: Colors.black12,
                                                      leading: Icon(Icons.mail_outline,color: Colors.deepPurple), title: Text("Chat", style: TextStyle(color: lighttext)), subtitle: Text("message", style: TextStyle(color: lighttext))),
                                                      
                                                                                ListTile(
                                                                                    leading: Icon(
                                                                                      Icons.calendar_today,
                                                                                      color: Colors.deepPurple,
                                                                                    ),
                                                                                    title: Text("Day Taught", style: TextStyle(color: lighttext)),
                                                                                    subtitle: Text(i['day_taught'], style: TextStyle(color: lighttext))),
                                                                                ListTile(leading: Icon(Icons.av_timer, color: Colors.deepPurple), title: Text("Time Duration", style: TextStyle(color: lighttext)), subtitle: Text(i['time_duration'], style: TextStyle(color: lighttext))),
                                                                                ListTile(leading: Icon(Icons.now_widgets, color: Colors.deepPurple), title: Text("Code", style: TextStyle(color: lighttext)), subtitle: Text(i['code'], style: TextStyle(color: lighttext))),
                                                                                ListTile(leading: Icon(Icons.person_outlined, color: Colors.deepPurple), title: Text("Teacher", style: TextStyle(color: lighttext)), subtitle: Text(i['teacher'], style: TextStyle(color: lighttext))),
                                                                                ListTile(leading: Icon(Icons.place, color: Colors.deepPurple), title: Text("Place Taught", style: TextStyle(color: lighttext)), subtitle: Text(i['place_taught'], style: TextStyle(color: lighttext))),
                                                                              ],
                                                                            )),
                                                                            //bottoma navigation bar
                                                                          );
                                                                        });
                                                                  },
                                                                  child: Icon(
                                                                      Icons
                                                                          .info_outline,
                                                                      color: Colors
                                                                          .deepPurple),
                                                                ),
                                                              ))
                                                          : SizedBox(),
                                                    ),
                                              ],
                                            ),

                                            //Expanded(child: Text("NoticeBoard"),)
                                          )
                                        ]),
                            ),
                          ])),
                        ),

                        //rest of the tabs go here
                        events(
                            kala1: darkmode,

                            //change this
                            title1: value[int.parse(widget.userid) - 1]
                                ["Subjects"]), //Timetable
                        communications(
                          kala1: darkmode,
                          username: sky2['username'].toString(),
                          klass:
                              '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                          school: sky2['school'],
                          title1: value2,
                          tr: widget.token,
                        ),
                        groupme(
                          kala1: darkmode,
                          important1: value[int.parse(widget.userid) - 1]
                                ["Subjects"],
                          username: sky2['username'].toString(),
                          klass:
                              '${value.map((kn) => kn['username'] == sky2['username'] ? kn['Class'] : '').toString().replaceAll('(', '').replaceAll(')', '').replaceAll(',', '').replaceAll(" ", '')}',
                          school: sky2['school'],
                          title1: value2,
                          tr: widget.token,
                        ),
                        /*Transit(
                            token: widget.token.toString(),
                            miuser: sky2['username'],
                            bueno: haro.length < 1 ? 1 : this.haro.last,
                            on: gechyu,
                            cordx1:
                                '-1.2', //value3 != null?'xx':value3.toString().split(',')[0].toString(),
                            cordx2:
                                '36.2' //value3.toString().split(',')[1].toString() != null?'xx':value3.toString().split(',')[1].toString(),
                            )*/
                      ])),
            ));

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

//After thought in school esp Riara Uni,places having qr's so that people scan and know the exact location not only location but timetable
