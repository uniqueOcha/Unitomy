import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uniquetomy/FirebaseServices.dart';

import 'allSystems.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUp> {
  //final _formkey = GlobalKey<FormState>();
  String? email;
  String? userName;
  String? password;
  String? confirmPassword;
  bool remember = false;
  final List<String?> errors = [];
  final TextEditingController emailController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseServices firebaseServices = FirebaseServices();

  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  SharedPreferences? prefs;



  @override
  void dispose() {
    emailController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.red,
        title: Text("SignUp"),

      ),
      body: SingleChildScrollView(
       // key: _formkey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text("Hey,Welcome!!!",
            style: TextStyle (
              fontSize: 30,
              color: Colors.red
            ),
            ),
            Text("Sign up to continue.",
              style: TextStyle (
                  fontSize: 20,
                  color: Colors.black
              ),
            ),





            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child:
                    Image.asset("assets/images/background.jpeg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: userNameController,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                    hintText: 'Enter Username'),
              ),
            ),

              Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Passwprd',
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
                  final _userName = userNameController.text.toString();
                  //if (_formKey.currentState!.validate()) {
                   // _formKey.currentState!.save();
                    // if all are valid then go to success screen
                    await firebaseServices.register(context, _email, _password, _userName,);

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ClassesOfBodySystem()));
                 // }
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),

            SizedBox(
              height: 130,
            ),
            Text("By signing up you agree to our terms and policy.",
              style: TextStyle (
                  fontSize: 10,
                  color: Colors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}