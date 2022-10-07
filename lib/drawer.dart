import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'main.dart';

class Gradebook extends StatelessWidget {
  Gradebook({Key? key, required this.rxt}) : super(key: key);
  List rxt;
  //List rtx;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: Text(""), centerTitle: true, leading: Container()),
        body: Center(
          child: Card(
              child: Column(
            children: [
              AppBar(
                title: Text("Subjects"),
                centerTitle: true,
              ),
              ListTile(
                title: Text("Subject",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                // trailing: Text("Grade",
                //     style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              ...rxt.map((e) => ListTile(
                    title: Text("${e['headline']}"),
                    //trailing: Text("${e['grade']}"),
                  ))
            ],
          )),
        ));
  }
}

class fees extends StatelessWidget {
  const fees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("School fees details"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
            child: Column(
          children: [
            ListTile(
              title: Text("Amount"),
              trailing: Text("date"),
            )
          ],
        )),
      ),
      bottomNavigationBar: ListTile(
        title: Text("Balance"),
        trailing: Text("Amount remaining"),
      ),
    );
  }
}

class contacts extends StatelessWidget {
  contacts({Key? key, required this.rxt}) : super(key: key);
  List rxt;
  String relax = ''' 
Terms & Conditions

By downloading or using the app, these terms will automatically apply to you – you should make sure therefore that you read them carefully before using the app. You’re not allowed to copy or modify the app, any part of the app, or our trademarks in any way. You’re not allowed to attempt to extract the source code of the app, and you also shouldn’t try to translate the app into other languages or make derivative versions. The app itself, and all the trademarks, copyright, database rights, and other intellectual property rights related to it, still belong to Afleet services.

Afleet services is committed to ensuring that the app is as useful and efficient as possible. For that reason, we reserve the right to make changes to the app or to charge for its services, at any time and for any reason. We will never charge you for the app or its services without making it very clear to you exactly what you’re paying for.

The Afleet app stores and processes personal data that you have provided to us, to provide our Service. It’s your responsibility to keep your phone and access to the app secure. We therefore recommend that you do not jailbreak or root your phone, which is the process of removing software restrictions and limitations imposed by the official operating system of your device. It could make your phone vulnerable to malware/viruses/malicious programs, compromise your phone’s security features and it could mean that the Afleet app won’t work properly or at all.

The app does use third-party services that declare their Terms and Conditions.

Link to Terms and Conditions of third-party service providers used by the app

Google Play Services
You should be aware that there are certain things that Afleet services will not take responsibility for. Certain functions of the app will require the app to have an active internet connection. The connection can be Wi-Fi or provided by your mobile network provider, but Afleet services cannot take responsibility for the app not working at full functionality if you don’t have access to Wi-Fi, and you don’t have any of your data allowance left.

If you’re using the app outside of an area with Wi-Fi, you should remember that the terms of the agreement with your mobile network provider will still apply. As a result, you may be charged by your mobile provider for the cost of data for the duration of the connection while accessing the app, or other third-party charges. In using the app, you’re accepting responsibility for any such charges, including roaming data charges if you use the app outside of your home territory (i.e. region or country) without turning off data roaming. If you are not the bill payer for the device on which you’re using the app, please be aware that we assume that you have received permission from the bill payer for using the app.

Along the same lines, Afleet services cannot always take responsibility for the way you use the app i.e. You need to make sure that your device stays charged – if it runs out of battery and you can’t turn it on to avail the Service, Afleet services cannot accept responsibility.

With respect to Afleet services’s responsibility for your use of the app, when you’re using the app, it’s important to bear in mind that although we endeavor to ensure that it is updated and correct at all times, we do rely on third parties to provide information to us so that we can make it available to you. Afleet services accepts no liability for any loss, direct or indirect, you experience as a result of relying wholly on this functionality of the app.

At some point, we may wish to update the app. The app is currently available on Android & iOS – the requirements for the both systems(and for any additional systems we decide to extend the availability of the app to) may change, and you’ll need to download the updates if you want to keep using the app. Afleet services does not promise that it will always update the app so that it is relevant to you and/or works with the Android & iOS version that you have installed on your device. However, you promise to always accept updates to the application when offered to you, We may also wish to stop providing the app, and may terminate use of it at any time without giving notice of termination to you. Unless we tell you otherwise, upon any termination, (a) the rights and licenses granted to you in these terms will end; (b) you must stop using the app, and (if needed) delete it from your device.

Changes to This Terms and Conditions

We may update our Terms and Conditions from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Terms and Conditions on this page.

These terms and conditions are effective as of 2022-08-09

Contact Us

If you have any questions or suggestions about our Terms and Conditions, do not hesitate to contact us at 
admin@afleet.ac.ke 
or
kiprono.ngetich@riarauniversity.ac.ke.


  ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Terms of service"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Center(
              child: Card(
                  child: Column(
                children: [
                  ListTile(
                    title: Text(relax.toString()),
                    //trailing: Text("__"),
                  ),
                ],
              )),
            ),
          ]),
        ));
  }
}

class teachers extends StatelessWidget {
  teachers({Key? key, required this.rxt}) : super(key: key);
  List rxt;

  @override
  Widget build(BuildContext context) {
    var oyaa;
    oyaa = rxt.map((d) => d['teacher'].toString());
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Teachers", style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
              child: Column(
            children: [
              // Text(oyaa.toString()),
              ListTile(
                title: Text("Teacher",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                trailing: Text("Subject",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              ...rxt.map((e) => ListTile(
                    title: Text("${e['teacher']}"),
                    trailing: Text("${e['headline']}"),
                  ))
            ],
          )),
        ));
  }
}

class help extends StatelessWidget {
  const help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Contact us"),
          centerTitle: true,
        ),
        body: Center(
          child: Card(
              child: Column(
            children: [
              ListTile(
                title: Text("call"),
                trailing: Text("__"),
              ),
            ],
          )),
        ));
  }
}

class calx extends StatefulWidget {
  calx({Key? key}) : super(key: key);
  // alone4;

  @override
  State<calx> createState() => _calxState();
}

class _calxState extends State<calx> {
  var responsev;
  var notresponsev;
  List data = [];
  List data2 = [];
  var route;

  var sb;
  var bs;
  /* Future createAlbum() async {
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
        
      });

      //});
//save the token for next time

    }
  }*/

  getdata() async {
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
      this.data2 = xcv2;
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
    String dropdownvalue = 'Embakasi Nyayo';
    //var new1 = widget.token;
    // List of items in our dropdown menu
    var items = [
      'Embakasi Nyayo',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];

    var items2 = [
      'KBS 5674',
      'KBS 5674',
      'KBS 5674',
      'KBS 5674',
      'Item 5',
    ];
    var items3 = [
      'Embakasi Nyayo',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    String bn = '''Privacy Policy
Afleet services built the Afleet app as an Ad Supported app. This SERVICE is provided by Afleet services  and is intended for use as is.

This page is used to inform users regarding our policies with the collection, use, and disclosure of Personal Information if anyone decided to use our Service.

If you choose to use our Service, then you agree to the collection and use of information in relation to this policy. The Personal Information that we collect is used for providing and improving the Service. We will not use or share your information with anyone except as described in this Privacy Policy.

The terms used in this Privacy Policy have the same meanings as in our Terms and Conditions, which are accessible at Afleet unless otherwise defined in this Privacy Policy.

Information Collection and Use

For a better experience, while using our Service, we may require you to provide us with certain personally identifiable information, including but not limited to location. The information that we request will be retained by us and used as described in this privacy policy.

The app does use third-party services that may collect information used to identify you.

Link to the privacy policy of third-party service providers used by the app

Google Play Services
Log Data

We want to inform you that whenever you use our Service, in a case of an error in the app we collect data and information (through third-party products) on your phone called Log Data. This Log Data may include information such as your device Internet Protocol (“IP”) address, device name, operating system version, the configuration of the app when utilizing our Service, the time and date of your use of the Service, and other statistics.

Cookies

Cookies are files with a small amount of data that are commonly used as anonymous unique identifiers. These are sent to your browser from the websites that you visit and are stored on your device's internal memory.

This Service does not use these “cookies” explicitly. However, the app may use third-party code and libraries that use “cookies” to collect information and improve their services. You have the option to either accept or refuse these cookies and know when a cookie is being sent to your device. If you choose to refuse our cookies, you may not be able to use some portions of this Service.

Service Providers

We may employ third-party companies and individuals due to the following reasons:

To facilitate our Service;
To provide the Service on our behalf;
To perform Service-related services; or
To assist us in analyzing how our Service is used.
We want to inform users of this Service that these third parties have access to their Personal Information. The reason is to perform the tasks assigned to them on our behalf. However, they are obligated not to disclose or use the information for any other purpose.

Security

We value your trust in providing us your Personal Information, thus we are striving to use commercially acceptable means of protecting it. But remember that no method of transmission over the internet, or method of electronic storage is 100% secure and reliable, and we cannot guarantee its absolute security.

Links to Other Sites

This Service may contain links to other sites. If you click on a third-party link, you will be directed to that site. Note that these external sites are not operated by us. Therefore, we strongly advise you to review the Privacy Policy of these websites. We have no control over and assume no responsibility for the content, privacy policies, or practices of any third-party sites or services.

Children’s Privacy

These Services do not address anyone under the age of 13. We do not knowingly collect personally identifiable information from children under 13 years of age. In the case we discover that a child under 13 has provided us with personal information, we immediately delete this from our servers. If you are a parent or guardian and you are aware that your child has provided us with personal information, please contact us so that we will be able to do the necessary actions.

Changes to This Privacy Policy

We may update our Privacy Policy from time to time. Thus, you are advised to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page.

This policy is effective as of 2022-08-09

Contact Us

If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us at 
admin@afleet.ac.ke 
or
kiprono.ngetich@riarauniversity.ac.ke.


    ''';
    return Scaffold(
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
              title: Text("Afleet's Policy"),
              centerTitle: true,
            ),
            Card(
              elevation: 0,
              child: Column(
                children: [
                  // ListTile(title: Text('')),
                  ListTile(
                    title:
                        Center(child: Text('', style: TextStyle(fontSize: 20))),
                  ),
                  ListTile(
                      title: Text(
                    bn, //textAlign: TextAlign.center,
                  )),

                  ListTile(),
                  /* ListTile(
                    title: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * .8,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(20)),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text("done",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        )),
                  ),*/
                ],
              ),
            )
          ]),
        ),
      )),
    );
  }
}
