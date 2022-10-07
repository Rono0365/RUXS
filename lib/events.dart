import 'package:flutter/material.dart';

class events extends StatelessWidget {
  const events({Key? key, required this.title1, required this.kala1})
      : super(key: key);
  final List title1;
  final bool kala1;
  //final title2;
  @override
  Widget build(BuildContext context) {
    List timetable = [
      [
        "Monday",
        "Environmental Sustainability",
        ["2hr45min", "Week9", "Topic", "G13-physical"]
      ],
      [
        "Tuesday",
        "Environmental Sustainability",
        ["2hr45min", "Week9", "Topic", "G13-physical"]
      ],
      [
        "Wednesday",
        "Environmental Sustainability",
        ["2hr45min", "Week9", "Topic", "G13-physical"]
      ],
      [
        "Thursday",
        "Environmental Sustainability",
        ["2hr45min", "Week9", "Topic", "G13-physical"]
      ],
      [
        "Friday",
        "Environmental Sustainability",
        ["2hr45min", "Week9", "Topic", "G13-physical"]
      ]
    ];
    return Scaffold(
        backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
        body: DefaultTabController(
          length: 5,
          child: Scaffold(
            backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
            appBar: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                    width: 5.0,
                  ),
                  insets: EdgeInsets.symmetric(horizontal: 36.0)),
              tabs: [
                ...timetable.map(
                  (i) => Tab(
                    icon: CircleAvatar(
                      radius: 17,
                      child: CircleAvatar(
                        backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                        radius: 15,
                        child: Text(
                          i[0].substring(0, 2).toString(),
                          style: TextStyle(
                              color: kala1?Colors.white:Colors.grey.shade900,//Colors.grey.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                    //  backgroundColor: Colors.grey[50],
                  ),
                ),
              ],
            ),
            body: Scaffold(
              backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
              body: TabBarView(children: [
                //here most prolly for monday
                SingleChildScrollView(
                    child: Column(children: [
                  ...this.title1.map((i) => i['day_taught'] == "Monday"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              // Text(i.toString()),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 7,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        i['time_taught'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kala1?Colors.white:Colors.grey.shade900,),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),

                              Container(
                                width: MediaQuery.of(context).size.width * .90,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    )),
                                child: Material(
                                    color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Card(
                                      elevation: 0,
                                      color:
                                          Colors.transparent,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.transparent,
                                            leading: Text(
                                                i['headline'].toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                 color:   kala1?Colors.white:Colors.grey[900],
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //subtitle: Row(children:[ Text(i['teacher'])]),
                                            trailing: InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) {
                                                        //  sum = 0;
                                                        //var given_list = [1, 2, 3, 4, 5];

                                                        return Scaffold(
                                                          backgroundColor:
                                                              Colors.white,
                                                          appBar: AppBar(
                                                              centerTitle: true,
                                                              title: Text(
                                                                  i['headline'],
                                                                  style: TextStyle(
                                                                    
                                                                      color: Colors
                                                                          .black)),
                                                              elevation: 0.0,
                                                              backgroundColor:
                                                                  Colors.white),
                                                          body:
                                                              SingleChildScrollView(
                                                                  child: Column(
                                                            children: [
                                                              /*
                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                    */
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .calendar_today),
                                                                  title: Text(
                                                                      "Day Taught"),
                                                                  subtitle: Text(
                                                                      i['day_taught'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .av_timer),
                                                                  title: Text(
                                                                      "Time Duration"),
                                                                  subtitle: Text(
                                                                      i['time_duration'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .now_widgets),
                                                                  title: Text(
                                                                      "Code"),
                                                                  subtitle: Text(
                                                                      i['code'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .person_outlined),
                                                                  title: Text(
                                                                      "Teacher"),
                                                                  subtitle: Text(
                                                                      i['teacher'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .place),
                                                                  title: Text(
                                                                      "Place Taught"),
                                                                  subtitle: Text(
                                                                      i['place_taught'])),
                                                            ],
                                                          )),
                                                          //bottoma navigation bar
                                                        );
                                                      });
                                                },
                                                child: Icon(Icons.info_outline,
                                                    color: Colors.deepPurple)),
                                            //subtitle: Text("Assignment:"),
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(Icons.schedule,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['time_duration'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip( backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(
                                                      Icons.person_outlined,color: kala1?Colors.deepPurple:Colors.grey.shade900, ),
                                                  label: Text(i['teacher'],style: TextStyle(color:kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: !kala1?Colors.white:Colors.grey.shade900,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar:
                                                      Icon(Icons.location_pin,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['place_taught'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ])
                      : Container()),
                ])),
                SingleChildScrollView(
                    child: Column(children: [
                  ...this.title1.map((i) => i['day_taught'] == "Tuesday"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 7,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        i['time_taught'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kala1?Colors.white:Colors.grey.shade900,),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .90,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    )),
                                child: Material(color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Card(
                                      elevation: 0,
                                      color:
                                          Colors.transparent,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            leading: Text(
                                                i['headline'].toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color:   kala1?Colors.white:Colors.grey[900],
                                                 
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //subtitle: Row(children:[ Text(i['teacher'])]),
                                            trailing: InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) {
                                                        //  sum = 0;
                                                        //var given_list = [1, 2, 3, 4, 5];

                                                        return Scaffold(
                                                          backgroundColor:
                                                              Colors.white,
                                                          appBar: AppBar(
                                                              centerTitle: true,
                                                              title: Text(
                                                                  i['headline'],
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                              elevation: 0.0,
                                                              backgroundColor:
                                                                  Colors.white),
                                                          body:
                                                              SingleChildScrollView(
                                                                  child: Column(
                                                            children: [
                                                              /*
                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                    */
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .calendar_today),
                                                                  title: Text(
                                                                      "Day Taught"),
                                                                  subtitle: Text(
                                                                      i['day_taught'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .av_timer),
                                                                  title: Text(
                                                                      "Time Duration"),
                                                                  subtitle: Text(
                                                                      i['time_duration'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .now_widgets),
                                                                  title: Text(
                                                                      "Code"),
                                                                  subtitle: Text(
                                                                      i['code'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .person_outlined),
                                                                  title: Text(
                                                                      "Teacher"),
                                                                  subtitle: Text(
                                                                      i['teacher'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .place),
                                                                  title: Text(
                                                                      "Place Taught"),
                                                                  subtitle: Text(
                                                                      i['place_taught'])),
                                                            ],
                                                          )),
                                                          //bottoma navigation bar
                                                        );
                                                      });
                                                },
                                                child: Icon(Icons.info_outline,
                                                    color: Colors.deepPurple)),
                                            //subtitle: Text("Assignment:"),
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(Icons.schedule,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['time_duration'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip( backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(
                                                      Icons.person_outlined,color: kala1?Colors.deepPurple:Colors.grey.shade900, ),
                                                  label: Text(i['teacher'],style: TextStyle(color:kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: !kala1?Colors.white:Colors.grey.shade900,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar:
                                                      Icon(Icons.location_pin,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['place_taught'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ])
                      : Container()),
                ])),
                SingleChildScrollView(
                    child: Column(children: [
                  ...this.title1.map((i) => i['day_taught'] == "Wednesday"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 7,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        i['time_taught'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kala1?Colors.white:Colors.grey.shade900,),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .90,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    )),
                                child: Material(color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Card(
                                      elevation: 0,
                                      color:Colors.transparent,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            leading: Text(
                                                i['headline'].toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color:   kala1?Colors.white:Colors.grey[900],
                                                 
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //subtitle: Row(children:[ Text(i['teacher'])]),
                                            trailing: InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) {
                                                        //  sum = 0;
                                                        //var given_list = [1, 2, 3, 4, 5];

                                                        return Scaffold(
                                                          backgroundColor:
                                                              Colors.white,
                                                          appBar: AppBar(
                                                              centerTitle: true,
                                                              title: Text(
                                                                  i['headline'],
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                              elevation: 0.0,
                                                              backgroundColor:
                                                                  Colors.white),
                                                          body:
                                                              SingleChildScrollView(
                                                                  child: Column(
                                                            children: [
                                                              /*
                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                    */
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .calendar_today),
                                                                  title: Text(
                                                                      "Day Taught"),
                                                                  subtitle: Text(
                                                                      i['day_taught'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .av_timer),
                                                                  title: Text(
                                                                      "Time Duration"),
                                                                  subtitle: Text(
                                                                      i['time_duration'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .now_widgets),
                                                                  title: Text(
                                                                      "Code"),
                                                                  subtitle: Text(
                                                                      i['code'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .person_outlined),
                                                                  title: Text(
                                                                      "Teacher"),
                                                                  subtitle: Text(
                                                                      i['teacher'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .place),
                                                                  title: Text(
                                                                      "Place Taught"),
                                                                  subtitle: Text(
                                                                      i['place_taught'])),
                                                            ],
                                                          )),
                                                          //bottoma navigation bar
                                                        );
                                                      });
                                                },
                                                child: Icon(Icons.info_outline,
                                                    color: Colors.deepPurple)),
                                            //subtitle: Text("Assignment:"),
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(Icons.schedule,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['time_duration'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip( backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(
                                                      Icons.person_outlined,color: kala1?Colors.deepPurple:Colors.grey.shade900, ),
                                                  label: Text(i['teacher'],style: TextStyle(color:kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: !kala1?Colors.white:Colors.grey.shade900,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar:
                                                      Icon(Icons.location_pin,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['place_taught'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                        ],
                                      ),
                                    )),
                              )
                            ])
                      : Container()),
                ])),
                SingleChildScrollView(
                    child: Column(children: [
                  ...this.title1.map((i) => i['day_taught'] == "Thursday"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 7,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        i['time_taught'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kala1?Colors.white:Colors.grey.shade900,),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .90,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    )),
                                child: Material(color: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Card(
                                      elevation: 0,
                                      color:Colors.transparent,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            leading: Text(
                                                i['headline'].toString(),
                                                style: TextStyle(
                                                  
                                                    fontSize: 20,
                                                    color: kala1?Colors.white:Colors.grey[900],
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //subtitle: Row(children:[ Text(i['teacher'])]),
                                            trailing: InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) {
                                                        //  sum = 0;
                                                        //var given_list = [1, 2, 3, 4, 5];

                                                        return Scaffold(
                                                          backgroundColor:
                                                              Colors.white,
                                                          appBar: AppBar(
                                                              centerTitle: true,
                                                              title: Text(
                                                                  i['headline'],
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                              elevation: 0.0,
                                                              backgroundColor:
                                                                  Colors.white),
                                                          body:
                                                              SingleChildScrollView(
                                                                  child: Column(
                                                            children: [
                                                              /*
                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                    */
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .calendar_today),
                                                                  title: Text(
                                                                      "Day Taught"),
                                                                  subtitle: Text(
                                                                      i['day_taught'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .av_timer),
                                                                  title: Text(
                                                                      "Time Duration"),
                                                                  subtitle: Text(
                                                                      i['time_duration'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .now_widgets),
                                                                  title: Text(
                                                                      "Code"),
                                                                  subtitle: Text(
                                                                      i['code'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .person_outlined),
                                                                  title: Text(
                                                                      "Teacher"),
                                                                  subtitle: Text(
                                                                      i['teacher'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .place),
                                                                  title: Text(
                                                                      "Place Taught"),
                                                                  subtitle: Text(
                                                                      i['place_taught'])),
                                                            ],
                                                          )),
                                                          //bottoma navigation bar
                                                        );
                                                      });
                                                },
                                                child: Icon(Icons.info_outline,
                                                    color: Colors.deepPurple)),
                                            //subtitle: Text("Assignment:"),
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(Icons.schedule,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['time_duration'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip( backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(
                                                      Icons.person_outlined,color: kala1?Colors.deepPurple:Colors.grey.shade900, ),
                                                  label: Text(i['teacher'],style: TextStyle(color:kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: !kala1?Colors.white:Colors.grey.shade900,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar:
                                                      Icon(Icons.location_pin,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['place_taught'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ])
                      : Container()),
                ])),
                SingleChildScrollView(
                    child: Column(children: [
                  ...this.title1.map((i) => i['day_taught'] == "Friday"
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 12,
                                      width: 7,
                                      color: Colors.deepPurple,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      child: Text(
                                        i['time_taught'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color:  kala1?Colors.white:Colors.grey.shade900,),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * .90,
                                padding: EdgeInsets.all(5),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border:
                                        Border.all(color: Colors.deepPurple),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                    )),
                                child: Material(
                                  color: Colors.transparent,
                                    //color: Colors.tra,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                      ),
                                    ),
                                    child: Card(
                                      elevation: 0,
                                      color:Colors.transparent,
                                      child: Column(
                                        children: [
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            leading: Text(
                                                i['headline'].toString(),
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color:   kala1?Colors.white:Colors.grey[900],
                                                 
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            //subtitle: Row(children:[ Text(i['teacher'])]),
                                            trailing: InkWell(
                                                onTap: () {
                                                  showModalBottomSheet(
                                                      context: context,
                                                      builder: (context) {
                                                        //  sum = 0;
                                                        //var given_list = [1, 2, 3, 4, 5];

                                                        return Scaffold(
                                                          backgroundColor:
                                                              Colors.white,
                                                          appBar: AppBar(
                                                              centerTitle: true,
                                                              title: Text(
                                                                  i['headline'],
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .black)),
                                                              elevation: 0.0,
                                                              backgroundColor:
                                                                  Colors.white),
                                                          body:
                                                              SingleChildScrollView(
                                                                  child: Column(
                                                            children: [
                                                              /*
                    "headline":"Technology","day_taught":"Thursday","time_duration":"2 hours","time_taught":"8:00 am","code":"001","teacher":"Teacher mindo","place_taught":"auditorium"
                    */
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .calendar_today),
                                                                  title: Text(
                                                                      "Day Taught"),
                                                                  subtitle: Text(
                                                                      i['day_taught'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .av_timer),
                                                                  title: Text(
                                                                      "Time Duration"),
                                                                  subtitle: Text(
                                                                      i['time_duration'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .now_widgets),
                                                                  title: Text(
                                                                      "Code"),
                                                                  subtitle: Text(
                                                                      i['code'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .person_outlined),
                                                                  title: Text(
                                                                      "Teacher"),
                                                                  subtitle: Text(
                                                                      i['teacher'])),
                                                              ListTile(
                                                                  leading: Icon(
                                                                      Icons
                                                                          .place),
                                                                  title: Text(
                                                                      "Place Taught"),
                                                                  subtitle: Text(
                                                                      i['place_taught'])),
                                                            ],
                                                          )),
                                                          //bottoma navigation bar
                                                        );
                                                      });
                                                },
                                                child: Icon(Icons.info_outline,
                                                    color: Colors.deepPurple)),
                                            //subtitle: Text("Assignment:"),
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(Icons.schedule,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['time_duration'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: Colors.transparent,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip( backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar: Icon(
                                                      Icons.person_outlined,color: kala1?Colors.deepPurple:Colors.grey.shade900, ),
                                                  label: Text(i['teacher'],style: TextStyle(color:kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                          ListTile(
                                            tileColor: !kala1?Colors.white:Colors.grey.shade900,// Colors.white,
                                            //leading: Icon(Icons.schedule),
                                            title: Row(children: [
                                              Chip(backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  //backgroundColor: !kala1?Colors.white:Colors.grey.shade900,
                                                  avatar:
                                                      Icon(Icons.location_pin,color: kala1?Colors.deepPurple:Colors.grey.shade900,),
                                                  label:
                                                      Text(i['place_taught'],style: TextStyle(color: kala1?Colors.white:Colors.grey.shade900,),))
                                            ]),
                                            //subtitle: Text(i['place_taught']),
                                            /*trailing: Chip(
                                                              backgroundColor: Colors.grey.shade200.withOpacity(0.1),
                                                              avatar: Icon(
                                                                        Icons
                                                                            .person_outlined,
                                                                        color: Colors.red,
                                                                        size: 19,
                                                                      ),label: Text(i['teacher'])),*/
                                          ),
                                        ],
                                      ),
                                    )),
                              ),
                            ])
                      : Container()),
                ])),
                //rudi
              ]),
            ),
          ),
        ));
  }
}
