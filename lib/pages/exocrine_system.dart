import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExocrineSystem extends StatelessWidget {
  const ExocrineSystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Excorine System"),
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
                    "Welcome To Exocrine System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/exocrine.jpeg"),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your exocrine system includes a series of glands all over your body. These glands secrete substances that help your organs function, including sweat, breast milk, mucus and oil. Your exocrine system is different from your endocrine system, in that it secretes these substances through ducts.",
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
