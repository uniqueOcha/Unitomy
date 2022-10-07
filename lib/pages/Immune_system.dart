import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImmuneSystem extends StatelessWidget {
  const ImmuneSystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("immune System"),
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
                    "Welcome To Immune System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/immune.jpeg"),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "immune system, the complex group of defense responses found in humans and other advanced vertebrates that helps repel disease-causing organisms (pathogens). ",
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
