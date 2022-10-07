import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReproductiveSystem extends StatelessWidget {
  const ReproductiveSystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Reproductive System"),
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
                    "Welcome To Reproductive System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/reproductive.jpeg"),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The reproductive system is a collection of internal and external organs — in both males and females — that work together for the purpose of procreating. ",
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
