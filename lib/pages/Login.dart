import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../FirebaseServices.dart';
import 'allSystems.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? email;
  String? password;

  bool remember = false;
  final List<String?> errors = [];
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseServices firebaseServices = FirebaseServices();

  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  SharedPreferences? prefs;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("LOGIN"),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[





            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/background.jpeg')),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username Or Email',
                    hintText: 'Enter Username Or Email'),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),




            SizedBox(
              height: 30,
            ),

            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
              child: TextButton(

                onPressed: () async {
                  final _email = emailController.text.toString();
                  final _password = passwordController.text.toString();
                  //if (_formKey.currentState!.validate()) {
                  // _formKey.currentState!.save();
                  // if all are valid then go to success screen
                  await firebaseServices.signIn(context, _email, _password,);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClassesOfBodySystem()));
                  // }
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}