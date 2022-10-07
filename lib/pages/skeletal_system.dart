import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SkeletalSystem extends StatelessWidget {
  const SkeletalSystem({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Skeletal System"),
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
                    "Welcome To Skeletal System",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset("assets/images/skeletal.jpeg"),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "The skeleton of the human being is a unique structure that has adapted to the needs of bipedal locomotion and erect posture. The structural peculiarities of the human skeleton give human beings their characteristic appearance and facial geometry.\n\n"
                    "The bony skeleton provides the shape and framework on which the human body is designed and functions. It houses and protects vital organs; it contains bone marrow, which is the functional unit of the hematopoietic system; and it provides attachments and anchorage to muscles and ligaments and joint capsules.",
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
