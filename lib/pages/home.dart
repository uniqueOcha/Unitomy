import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:uniquetomy/pages/allSystems.dart';
import 'package:uniquetomy/pages/renal/profile.dart';

import 'Login.dart';
import 'SignUp.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unitomy"),
        foregroundColor: Colors.black,
        shadowColor: Colors.white,
        backgroundColor: Colors.red ,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
                accountName: Text(
                  "Unique",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
                accountEmail: Text(
                  "Anotamy notes and lessons.",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              currentAccountPicture:
                CircleAvatar(
                  backgroundColor: Colors.red,
                  child: ClipOval(
                    child: Image.asset("assets/images/background.jpeg"),
                  )
                  ,
                )
            ),
            InkWell(
              child: ListTile(

                title: const Text('SignUp'),
                leading: Icon(Icons.dashboard,
                  color: Colors.red,
                size: 30,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignUp()));

                },
              ),
            ),
            InkWell(
              child: ListTile(
                title: Text('Login'),

                leading: Icon(Icons.book,
                  color: Colors.red,
                size: 30,),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Login()));

                },
              ),
            ),

            InkWell(
              child: ListTile(
                title: const Text('notification'),
                leading: Icon(Icons.alarm,
                  color: Colors.red,
                size: 30,),

                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Profile()));
                },
              ),
            ),

            ListTile(
              title: const Text('settings'),
              leading: Icon(Icons.settings,
                color: Colors.red,
              size:
                30,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);

                },
            ),

            ListTile(
              title: const Text('share the app'),
              leading: Icon(Icons.share,
                color: Colors.red,
              size: 30,),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),

      body:  Center(
        child: ClassesOfBodySystem(),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Colors.red,
            size: 30,),
            label: 'Home'
            ,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save,
              color: Colors.red,
            size: 30,),
            label: 'save',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,
              color: Colors.red,
            size: 30,),


            label: 'Profile',
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }

  _showToast(){
    Fluttertoast.showToast(
        msg: "Button Clicked",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }
}
