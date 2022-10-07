import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RespiratorySystem extends StatelessWidget {
  const RespiratorySystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Respiratory System"),
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
                    "Welcome To Respiratory System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/respiratory.jpeg"),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your respiratory system is the network of organs and tissues that help you breathe. This system helps your body absorb oxygen from the air so your organs can work. It also cleans waste gases, such as carbon dioxide, from your blood. Common problems include allergies, diseases or infections ",
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
