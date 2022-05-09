// ignore_for_file: prefer_const_constructors

import 'package:cignify_app/cignify_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CignifyApp());
}

class CignifyApp extends StatefulWidget {
  const CignifyApp({ Key? key }) : super(key: key);

  @override
  State<CignifyApp> createState() => _CignifyAppState();
}

class _CignifyAppState extends State<CignifyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
          title: Text('cignify',
            style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 31, 50, 157)),
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: CignifyForm(),
        ),
      ),
    );
  }
}