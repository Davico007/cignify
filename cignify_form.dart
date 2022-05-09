// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class CignifyForm extends StatefulWidget {
  const CignifyForm({ Key? key }) : super(key: key);

  @override
  State<CignifyForm> createState() => _CignifyFormState();
}

class _CignifyFormState extends State<CignifyForm> {
  String email= '';
  String nickName= '';
  String password= '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Text('Create your Account', style: TextStyle(fontSize: 20),),
            ),
            
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return 'Please enter a value';
                  }else if(value.length<3){
                    return 'email must be longer than 3 characters';
                  }
                },
                onChanged: (val){
                  email= val;
                },
                decoration: InputDecoration(
                labelText: 'email',
                border: OutlineInputBorder()
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return 'Please enter a value';
                  }else if(value.length<3){
                    return 'nickname must be longer than 3 characters';
                  }
                },
                onChanged: (val){
                  nickName= val;
                },
                decoration: InputDecoration(
                labelText: 'nickname',
                border: OutlineInputBorder()
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: TextFormField(
                obscureText: true,
                validator: (value) {
                  if (value==null||value.isEmpty) {
                    return 'Please enter a value';
                  }else if(value.length<3){
                    return 'password must be longer than 4 characters';
                  }
                },
                onChanged: (val){
                  password= val;
                },
                decoration: InputDecoration(
                labelText: 'password',
                border: OutlineInputBorder()
                ),
              ),
            ),

            Container(
              child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(50),
                  primary: Color.fromARGB(255, 31, 50, 157)
                ),
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    Map Details={
                      'email':email,
                      'nickname':nickName,
                      'password':password
                    };
                    print(Details);
                  } else {
                    print('ensure all details are filled');
                  }
                }, child: Text('Sign Up')
                ),
            )
          ],
        )
      ),  
    );
  }
}