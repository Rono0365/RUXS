import 'package:flutter/material.dart';
import 'realstore.dart';


class store extends StatefulWidget {
  const store({Key? key, required this.username}) : super(key: key);
  final String username;
  @override
  State<store> createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  void initState() {
    super.initState();
    _navtohome();
  }
  _navtohome() async {
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context) => bookstore(
         // title: 'splash',
        )));//MyHomePage(title: "Fuzu",token:'',userid:'')));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        
        child: Container(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Icon(Icons.library_books_outlined,size:70,color: Colors.deepPurple,),
            SizedBox(height:15),
            Text("BookStore",style: TextStyle(fontWeight: FontWeight.w200,fontSize: 30,color: Colors.deepPurple,), textAlign: TextAlign.center,)
            ,SizedBox(height:15),
            Text("From Afleet."),
          ]),
        )),
        
    );
  }
}

