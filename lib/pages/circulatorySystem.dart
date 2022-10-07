import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CirculatorySystem extends StatelessWidget {
  const CirculatorySystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Circulatory System"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(22),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Container(
                  width: 300,
                  margin: EdgeInsets.all(22),
                  child: Text(
                    "Welcome To Circulatory System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/circulatory.jpg"),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The circulatory system (cardiovascular system) pumps blood from the heart to the lungs to get oxygen. The heart then sends oxygenated blood through arteries to the rest of the body. The veins carry oxygen-poor blood back to the heart to start the circulation process over. Your circulatory system is critical to healthy organs, muscles and tissues. ",
                  style: TextStyle(fontSize: 18),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
