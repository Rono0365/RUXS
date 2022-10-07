import 'package:flutter/material.dart';

class bookstore extends StatefulWidget {
  const bookstore({ Key? key }) : super(key: key);

  @override
  State<bookstore> createState() => _bookstoreState();
}

class _bookstoreState extends State<bookstore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Coming soon"),
      ),
    );
  }
}